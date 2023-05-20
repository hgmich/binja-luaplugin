#pragma once

#include "binaryninjaapi.h"

#include "utils.h"

#include "lua/LuaState.h"


using namespace BinaryNinja;
using namespace std;


namespace BNLua {
	class LuaScriptingInstance;

	class LuaScriptingProvider : public ScriptingProvider
	{
		friend LuaScriptingInstance;
		Ref<Logger> m_logger;
		LuaState m_L;

		void InitLibs();

	protected:
		LuaScriptingProvider();
		~LuaScriptingProvider();
		void AddScriptingLibs();
		void PreparePath();
		void SetProviderContext();

		std::string m_apiDir;

	public:
		static Ref<LuaScriptingProvider> Register();

		Ref<ScriptingInstance> CreateNewInstance() override;
		bool LoadModule(const std::string& repository, const std::string& module, bool force) override;
		bool InstallModules(const std::string& modules) override;

		static Ref<LuaScriptingProvider> GetFromLua(lua_State* L);
		Ref<Logger> GetLogger() const;
		void LoadLuaPlugins();
	};

}  // namespace BNLua
