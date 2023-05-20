//
// Created by Michael Holmes on 04/01/2023.
//

#include "LuaLib.h"

namespace BNLua {
	LuaLib::LuaLib(const char* name) : m_Name(name) {}

	const char* LuaLib::GetName() const
	{
		return m_Name;
	}
}  // namespace BNLua