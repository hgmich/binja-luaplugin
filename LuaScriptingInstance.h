#pragma once

#include "binaryninjaapi.h"

#include "utils.h"


using namespace BinaryNinja;
using namespace std;

namespace BNLua {
	class LuaScriptingProvider;

	class LuaScriptingInstance : public ScriptingInstance
	{
		friend LuaScriptingProvider;
		Ref<Logger> m_logger;
		lua_State* m_thread;

	public:
		BNScriptingProviderExecuteResult ExecuteScriptInput(const std::string& input) override;
		BNScriptingProviderExecuteResult ExecuteScriptInputFromFilename(const std::string& filename) override;

	protected:
		explicit LuaScriptingInstance(LuaScriptingProvider* provider);
		void SetNormalPrompt();
		void SetContinuationPrompt();
		void SetCurrentAddress(uint64_t addr) override;
	};
}  // namespace BNLua
