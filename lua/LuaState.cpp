//
// Created by Michael Holmes on 04/01/2023.
//

#include "LuaState.h"
#include "LuaLib.h"

namespace BNLua {
	LuaState::LuaState()
	{
		m_Inner = luaL_newstate();

		lua_pushboolean(m_Inner, true);
		lua_setfield(m_Inner, LUA_REGISTRYINDEX, "LUA_NOENV");
	}

	LuaState::~LuaState()
	{
		lua_close(m_Inner);
	}

	lua_State* LuaState::operator*()
	{
		return m_Inner;
	}

	void LuaState::RegisterLib(const struct LuaLib& lib)
	{
		lib.PushLib(*this);
		lua_setglobal(m_Inner, lib.GetName());
	}

}  // namespace BNLua
