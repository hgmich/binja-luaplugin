#include "binaryninjaapi.h"

#include "utils.h"
#include "LuaScriptingProvider.h"


using namespace BinaryNinja;
using namespace std;


extern "C"
{
	BN_DECLARE_CORE_ABI_VERSION

	static void RegisterPluginSettings()
	{
		Ref<Settings> settings = Settings::Instance();
	}

	[[maybe_unused]] BINARYNINJAPLUGIN bool CorePluginInit()
	{
		LogRegistry::CreateLogger(loggerName);
		RegisterPluginSettings();

		auto provider = BNLua::LuaScriptingProvider::Register();
		provider->LoadLuaPlugins();

		return true;
	}
}
