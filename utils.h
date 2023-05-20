#pragma once

extern "C"
{
#include "lua.h"
}

#define LOGGER_NAME   "LuaPlugin"
#define API_NAME      "lua51"
#define PROVIDER_NAME "Lua"

extern const char* loggerName;
extern const char* apiName;
extern const char* providerName;