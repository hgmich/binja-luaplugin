//
// Created by Michael Holmes on 04/01/2023.
//

#ifndef LUAPLUGIN_LUASTATE_H
#define LUAPLUGIN_LUASTATE_H

#include <lua.hpp>

namespace BNLua {
	class LuaState
	{
		lua_State* m_Inner;

	public:
		LuaState();
		~LuaState();
		lua_State* operator*();
		void RegisterLib(const class LuaLib&);
	};
}  // namespace BNLua


#endif  // LUAPLUGIN_LUASTATE_H
