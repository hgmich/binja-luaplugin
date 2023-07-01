//
// Created by Michael Holmes on 04/01/2023.
//

#include "LuaScriptingProvider.h"
#include "LuaScriptingInstance.h"

#include <lua.hpp>
#include "luajit.h"

#include "utils.h"

#include <string>
#include <vector>

#include <string.h>

#define PROVIDER_CTX_GLOBAL "__providerctx"
#define PROVIDER_CTX_TYPE   "BinaryNinja._providercontext"

static Ref<BNLua::LuaScriptingProvider>* checkContext(lua_State* L)
{
	void* ud = luaL_testudata(L, -1, PROVIDER_CTX_TYPE);
	if (ud == nullptr)
	{
		lua_getglobal(L, PROVIDER_CTX_TYPE);
		int l_ty = lua_type(L, -1);
		lua_pop(L, 1);
		luaL_error(L, "expected global provider context to be correct type, got %s", lua_typename(L, l_ty));
	}
	return (Ref<BNLua::LuaScriptingProvider>*)ud;
}

namespace BNLua {

	Ref<LuaScriptingProvider> LuaScriptingProvider::Register()
	{
		auto inst = new LuaScriptingProvider();
		inst->AddRefForRegistration();

		inst->m_logger->LogInfo("Loading " PROVIDER_NAME " plugin with API " API_NAME ", built with " LUA_RELEASE);
		inst->m_logger->LogInfo("LuaJIT version " LUAJIT_VERSION);

		ScriptingProvider::Register(inst);

		return inst;
	}

	Ref<ScriptingInstance> LuaScriptingProvider::CreateNewInstance()
	{
		return new LuaScriptingInstance(this);
	}

	LuaScriptingProvider::LuaScriptingProvider() :
		ScriptingProvider(providerName, apiName), m_apiDir(GetPathRelativeToUserDirectory(apiName)),
		m_logger(LogRegistry::GetLogger((loggerName)))
	{
		printf("LuaScriptingProvider Constructor start\n");

		PreparePath();
		SetProviderContext();
		InitLibs();

		printf("LuaScriptingProvider Constructor end\n");
	}

	bool LuaScriptingProvider::LoadModule(const string& repository, const string& module, bool force)
	{
		m_logger->LogWarn("TODO: implement LuaScriptingProvider::LoadModule");
		return true;
	}

	bool LuaScriptingProvider::InstallModules(const string& modules)
	{
		m_logger->LogWarn("TODO: implement LuaScriptingProvider::InstallModules");
		return true;
	}

	void LuaScriptingProvider::InitLibs()
	{
		auto L = *m_L;

		auto defFile = m_apiDir + "/default.lua";

		int result = luaL_dofile(L, defFile.c_str());

		if (LUA_OK != result)
		{
			const char* msg = lua_tostring(L, -1);
			luaL_traceback(L, L, msg, 1);
			const char* tb = lua_tostring(L, -1);
			printf("error in entry point: %s\n", tb);
			m_logger->LogError("error in entry point: %s", tb);
			lua_pop(L, 2);
		}
	}

	void LuaScriptingProvider::SetProviderContext()
	{
		auto ctx = (Ref<LuaScriptingProvider>*)lua_newuserdata(*m_L, sizeof(Ref<LuaScriptingProvider>));
		*ctx = Ref(this);

		luaL_newmetatable(*m_L, PROVIDER_CTX_TYPE);
		lua_setmetatable(*m_L, -2);

		lua_setglobal(*m_L, PROVIDER_CTX_GLOBAL);
	}

	Ref<LuaScriptingProvider> LuaScriptingProvider::GetFromLua(lua_State* L)
	{
		lua_getglobal(L, PROVIDER_CTX_GLOBAL);
		return *static_cast<Ref<LuaScriptingProvider>*>(checkContext(L));
	}

	Ref<Logger> LuaScriptingProvider::GetLogger() const
	{
		return m_logger;
	}

	void LuaScriptingProvider::LoadLuaPlugins()
	{
		size_t n_paths = 0;
		auto dir = GetUserPluginDirectory();
		auto paths = BNGetFilePathsInDirectory(dir.c_str(), &n_paths);
		vector<string> dirs;
		vector<string> files;

		try
		{
			for (size_t i = n_paths; i > 0; --i)
			{
				const char* p = paths[n_paths - i];

				if (BNIsPathDirectory(p))
				{
					string s(paths[n_paths - i]);
					dirs.emplace_back(s);
				}
				else if (BNIsPathRegularFile(p))
				{
					const char* ext = BNGetFileExtension(p);
					if (0 == strcmp(ext, ".lua"))
					{
						string s(paths[n_paths - i]);
						files.emplace_back(s);
					}
				}
			}
		}
		catch (std::exception&)
		{
			BNFreeStringList(paths, n_paths);
		}

		BNFreeStringList(paths, n_paths);

		for (const auto& s : dirs)
		{
			auto plugin = BNGetFileName(s.c_str());
			auto entry = s + "/default.lua";

			if (BNIsPathRegularFile(entry.c_str()))
			{
				auto L = *m_L;
				int result = luaL_dofile(L, entry.c_str());

				if (LUA_OK != result)
				{
					const char* msg = lua_tostring(L, -1);
					luaL_traceback(L, L, msg, 1);
					const char* tb = lua_tostring(L, -1);
					m_logger->LogError("%s", tb);
					m_logger->LogError(PROVIDER_NAME " plugin '%s' could not be loaded", plugin);
					lua_pop(L, 2);
				}
				else
				{
					m_logger->LogInfo("Loaded " API_NAME " plugin '%s'", plugin);
				}
			}
		}

		for (const auto& s : files)
		{
			string plugin;
			{
				string basename(BNGetFileName(s.c_str()));
				plugin = basename.substr(0, basename.length() - 4);
			}

			auto L = *m_L;
			m_logger->LogDebug("Loading Lua script file %s", s.c_str());
			int result = luaL_dofile(L, s.c_str());

			if (LUA_OK != result)
			{
				const char* msg = lua_tostring(L, -1);
				luaL_traceback(L, L, msg, 1);
				const char* tb = lua_tostring(L, -1);
				m_logger->LogError("%s", tb);
				m_logger->LogError(PROVIDER_NAME " plugin '%s' could not be loaded", plugin.c_str());
				lua_pop(L, 2);
			}
			else
			{
				m_logger->LogInfo("Loaded " API_NAME " plugin '%s'", plugin.c_str());
			}
		}
	}
	LuaScriptingProvider::~LuaScriptingProvider() {}

	void LuaScriptingProvider::PreparePath()
	{
		luaL_openlibs(*m_L);

		std::stringstream path("?;?.lua;");
		path << m_apiDir << "/?/default.lua";
		path << ";";
		path << m_apiDir << "/?.lua";

		lua_getglobal(*m_L, "package");
		lua_pushstring(*m_L, path.str().c_str());
		lua_setfield(*m_L, -2, "path");
	}
}  // namespace BNLua