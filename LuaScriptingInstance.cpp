//
// Created by Michael Holmes on 04/01/2023.
//

#include "LuaScriptingInstance.h"
#include "LuaScriptingProvider.h"

#include <iostream>
#include <thread>

#include "luaembed.h"

// Taken from LuaJIT REPL handler
// Detects if syntax errors are from incomplete delimiters
static int incomplete(lua_State* L, int status)
{
	if (status == LUA_ERRSYNTAX)
	{
		size_t lmsg;
		const char* msg = lua_tolstring(L, -1, &lmsg);
		const char* tp = msg + lmsg - (sizeof(LUA_QL("<eof>")) - 1);
		LogInfo("Syntax msg: %s", msg);
		if (strstr(msg, LUA_QL("<eof>")) == tp && strstr(msg, "'=' expected") == nullptr)
		{
			lua_pop(L, 1);
			return 1;
		}
	}
	return 0; /* else... */
}

static int l_doprint(lua_State* L)
{
	lua_getfield(L, LUA_REGISTRYINDEX, "_cuserdata");
	luaL_checkudata(L, -1, "BinaryNinja.LuaScriptingInstance");
	auto scrInst = *static_cast<CallbackRef<BNLua::LuaScriptingInstance>*>(lua_touserdata(L, -1));
	luaL_checkstring(L, 1);

	std::string out(lua_tostring(L, 1));

	scrInst->Output(out + "\n");

	return 0;
}

namespace BNLua {
	BNScriptingProviderExecuteResult LuaScriptingInstance::ExecuteScriptInput(const string& input)
	{
		int startStack = lua_gettop(m_thread);
		InputReadyStateChanged(NotReadyForInput);
		printf("Input: %s", input.c_str());
		LogInfo("Input: %s", input.c_str());

		int stmtChunkStatus = luaL_loadbuffer(m_thread, input.c_str(), input.length(), "=stdin");

		if (incomplete(m_thread, stmtChunkStatus))
		{
			SetContinuationPrompt();
			return IncompleteScriptInput;
		}
		else
		{
			// Try expression wrapping to print the value
			{
				stringstream expr;
				std::string savedMsg;
				expr << "return " << input.c_str();
				auto exprStr = expr.str();
				if (LUA_OK != stmtChunkStatus)
				{
					LogInfo("not statement");
					printf("not statement\n");
					// Save and pop message
					savedMsg += lua_tostring(m_thread, -1);
					lua_pop(m_thread, 1);
				}

				int exprChunkStatus = luaL_loadbuffer(m_thread, exprStr.c_str(), exprStr.length(), "=stdin");

				if (LUA_OK != exprChunkStatus)
				{
					LogInfo("not expression");
					printf("not expression\n");
					// Throw away message as it doesn't pertain to actual user input
					lua_pop(m_thread, 1);
				}

				if (LUA_OK != stmtChunkStatus && LUA_OK != exprChunkStatus)
				{
					// Report syntax error
					Error(savedMsg);
					Error("\n");
				}
				else
				{
					// Call whichever chunk succeeded
					lua_getglobal(m_thread, "_prompthandler");
					lua_insert(m_thread, -2);
					int chunkCallStatus = lua_pcall(m_thread, 1, 2, 0);
					if (LUA_OK == chunkCallStatus)
					{
						printf("Good\n");
						LogInfo("Good");
						printf("Stack size: %d\tRet 1 type: %s\tRet 2 type: %s\n", lua_gettop(m_thread),
							luaL_typename(m_thread, -1), luaL_typename(m_thread, -2));
						LogInfo("Stack size: %d\tRet 1 type: %s\tRet 2 type: %s", lua_gettop(m_thread),
							luaL_typename(m_thread, -1), luaL_typename(m_thread, -2));
						if (lua_gettop(m_thread) > 2)
						{
							printf("Extra stack type %s\n", luaL_typename(m_thread, -3));
							LogInfo("Extra stack type %s", luaL_typename(m_thread, -3));
						}

						const char* valStr = lua_tostring(m_thread, -1);
						const char* lineEnd = lua_tostring(m_thread, -2);
						Output(lineEnd ? lineEnd : "");
						Output(valStr ? valStr : "");
					}
					else
					{
						printf("Bad\n");
						LogInfo("Bad");
						Error(lua_tostring(m_thread, -1));
						Error("\n");
					}
				}

				lua_pop(m_thread, lua_gettop(m_thread) - startStack);
				SetNormalPrompt();
				return SuccessfulScriptExecution;
			}
		}
	}


	BNScriptingProviderExecuteResult LuaScriptingInstance::ExecuteScriptInputFromFilename(const string& filename)
	{
		Error("TODO: implement LuaScriptingInstance::ExecuteScriptInputFromFilename");
		return SuccessfulScriptExecution;
	}

	LuaScriptingInstance::LuaScriptingInstance(LuaScriptingProvider* provider) : ScriptingInstance(provider)
	{
		m_logger = provider->GetLogger();
		m_thread = lua_newthread(*provider->m_L);

		// add the _prompthandler function which wraps REPL line execution
		int status = luaL_loadbuffer(m_thread, reinterpret_cast<const char*>(LUA_CHUNK__PROMPTHANDLER),
			sizeof(LUA_CHUNK__PROMPTHANDLER) - 1, "=repl_internal");
		if (LUA_OK != status)
		{
			LogError("Could not parse Lua prompt handler script: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		status = lua_pcall(m_thread, 0, 1, 0);
		if (LUA_OK != status)
		{
			LogError("Could not load Lua prompt handler: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		lua_setglobal(m_thread, "_prompthandler");

		// Push a LuaScriptingInstance pointer into the lua context as a userdata variable
		// to implement print()
		auto udataptr =
			(CallbackRef<LuaScriptingInstance>*)(lua_newuserdata(m_thread, sizeof(CallbackRef<LuaScriptingInstance>)));
		*udataptr = CallbackRef<LuaScriptingInstance>(this);
		luaL_newmetatable(m_thread, "BinaryNinja.LuaScriptingInstance");
		lua_setmetatable(m_thread, -2);
		lua_setfield(m_thread, LUA_REGISTRYINDEX, "_cuserdata");

		// Push a C function to handle the C printing interface
		lua_register(m_thread, "_doprint", l_doprint);

		// Push our Lua print function
		status = luaL_loadbuffer(
			m_thread, reinterpret_cast<const char*>(LUA_CHUNK_PRINT), sizeof(LUA_CHUNK_PRINT) - 1, "=doprint");
		if (LUA_OK != status)
		{
			LogError("Could not parse Lua print implementation: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		status = lua_pcall(m_thread, 0, 1, 0);
		if (LUA_OK != status)
		{
			LogError("Could not load Lua print implementation: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		lua_setglobal(m_thread, "print");

		// Push our Lua table dump function
		status = luaL_loadbuffer(
			m_thread, reinterpret_cast<const char*>(LUA_CHUNK__TDUMP), sizeof(LUA_CHUNK__TDUMP) - 1, "=dotdump");
		if (LUA_OK != status)
		{
			LogError("Could not parse Lua table dump implementation: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		status = lua_pcall(m_thread, 0, 1, 0);
		if (LUA_OK != status)
		{
			LogError("Could not load Lua table dump implementation: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		lua_setglobal(m_thread, "_tdump");

		SetNormalPrompt();

		// Bring in the binaryninja module as a global
		status = luaL_loadbuffer(
			m_thread, reinterpret_cast<const char*>(LUA_CHUNK__LOADBN), sizeof(LUA_CHUNK__LOADBN) - 1, "=loadbn");
		if (LUA_OK != status)
		{
			LogError("Could not parse Lua extension module loader: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
		status = lua_pcall(m_thread, 0, 1, 0);
		if (LUA_OK != status)
		{
			LogError("Could not load binaryninja Lua libraries: %s", lua_tostring(m_thread, -1));
			lua_pop(m_thread, 1);
			return;
		}
	}

	void LuaScriptingInstance::SetCurrentAddress(uint64_t addr)
	{
		lua_pushinteger(m_thread, addr);
		lua_setglobal(m_thread, "currentaddress");
	}

	void LuaScriptingInstance::SetContinuationPrompt()
	{
		InputReadyStateChanged(ReadyForScriptProgramInput);
	}

	void LuaScriptingInstance::SetNormalPrompt()
	{
		InputReadyStateChanged(ReadyForScriptExecution);
	}
}  // namespace BNLua
