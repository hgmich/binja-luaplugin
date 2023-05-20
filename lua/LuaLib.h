//
// Created by Michael Holmes on 04/01/2023.
//


#include <lua.hpp>
#include "LuaState.h"

struct lua_State;

namespace BNLua {

	class LuaLib
	{
		const char* m_Name;

	public:
		[[nodiscard]] const char* GetName() const;
		virtual void PushLib(LuaState&) const = 0;
		explicit LuaLib(const char* name);
	};

}  // namespace BNLua
