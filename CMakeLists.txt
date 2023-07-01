cmake_minimum_required(VERSION 3.9 FATAL_ERROR)

set(CMAKE_POLICY_DEFAULT_CMP0077 NEW)

project(luaplugin)

add_executable(generator
        "${PROJECT_SOURCE_DIR}/generator.cpp")
target_link_libraries(generator binaryninjaapi)

# Looted from Binary Ninja CMake files, may become outdated
list(APPEND CMAKE_MODULE_PATH "${BN_API_PATH}/cmake")

# BinaryNinjaCore has the user plugins dir define that we want
find_package(BinaryNinjaCore REQUIRED)

set_target_properties(generator PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED ON
        BUILD_WITH_INSTALL_RPATH OFF
        RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

set(ROOT_DIR ${PROJECT_SOURCE_DIR})

option(USE_VENDORED_LUAJIT "Build against bundled LuaJIT" ON)
set(LUA_BUILD_COMPILER OFF CACHE INTERNAL "")
set(LUA_BUILD_INTERPRETER OFF CACHE INTERNAL "")
set(LUAJIT_BUILD_EXE OFF CACHE INTERNAL "")

if (USE_VENDORED_LUAJIT)
    set(LUAJIT_DIR "${ROOT_DIR}/vendor/luajit")
    add_subdirectory(vendor/luajit-cmake)
else ()
    find_package(Lua REQUIRED)
endif ()

#find_package(Lua REQUIRED)

SET(LUA_EMBED_HEADER "${CMAKE_BINARY_DIR}/luaembed.h")
SET(LUA_EMBED_FILES "${ROOT_DIR}/luaembed/*.lua")
file(GLOB luaembed_files "${LUA_EMBED_FILES}")
add_custom_command(
        OUTPUT "${LUA_EMBED_HEADER}"
        COMMAND "${CMAKE_COMMAND}"
        -DROOT_DIR="${ROOT_DIR}"
        -DLUA_EMBED_HEADER="${LUA_EMBED_HEADER}"
        -DLUA_EMBED_FILES="${LUA_EMBED_FILES}"
        -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/lua_embed.cmake"
        DEPENDS ${luaembed_files}
)

set(BN_CORE_PATH ${CMAKE_CURRENT_BINARY_DIR}/lua51/_binaryninjacore.lua)
set(BN_CDEFS_PATH ${CMAKE_CURRENT_BINARY_DIR}/lua51/_cdefs.lua)
set(BN_ENUMS_PATH ${CMAKE_CURRENT_BINARY_DIR}/lua51/enums.lua)

add_custom_command(
        OUTPUT ${BN_CORE_PATH} ${BN_CDEFS_PATH} ${BN_ENUMS_PATH}
        COMMAND generator ${BN_API_PATH}/binaryninjacore.h ${BN_CORE_PATH} ${BN_CDEFS_PATH} ${BN_ENUMS_PATH}
        DEPENDS generator
        # Needed for win32 to pick up binaryninjacore.dll
        WORKING_DIRECTORY ${BN_INSTALL_DIR}/)

add_custom_target(luabindings ALL
        DEPENDS ${BN_CORE_PATH} ${BN_CDEFS_PATH} ${BN_ENUMS_PATH})

if (NOT BN_API_PATH)
    set(BN_API_PATH $ENV{BN_API_PATH})
    if (NOT BN_API_PATH)
        message(FATAL_ERROR " Provide path to Binary Ninja API source in BN_API_PATH ")
    endif ()
endif ()
add_subdirectory(${BN_API_PATH} ${PROJECT_BINARY_DIR}/api)

file(GLOB SOURCES
        "${LUA_EMBED_HEADER}"
        *.cpp
        *.h
        lua/*.cpp
        lua/*.h)

add_library(luaplugin SHARED ${SOURCES} utils.cpp utils.h)

target_include_directories(luaplugin
        PRIVATE ${PROJECT_SOURCE_DIR}
        PRIVATE ${PROJECT_BINARY_DIR})

target_link_libraries(luaplugin PRIVATE binaryninjaapi luajit::luajit)

set_target_properties(luaplugin PROPERTIES
        CXX_STANDARD 17
        CXX_VISIBILITY_PRESET hidden
        CXX_STANDARD_REQUIRED ON
        C_STANDARD 99
        C_STANDARD_REQUIRED ON
        C_VISIBILITY_PRESET hidden
        VISIBILITY_INLINES_HIDDEN ON
        POSITION_INDEPENDENT_CODE ON)

bn_install_plugin(luaplugin)

string(REPLACE "\\" "/" BN_USER_PLUGINS_DIR ${BinaryNinjaCore_USER_PLUGINS_DIR})

install(DIRECTORY "lua51"
        DESTINATION "${BN_USER_PLUGINS_DIR}/..")


install(FILES ${BN_CORE_PATH} ${BN_CDEFS_PATH} ${BN_ENUMS_PATH}
        DESTINATION "${BN_USER_PLUGINS_DIR}/../lua51")

file(GLOB script_dirs
        "examples/*/")

file(GLOB scripts
        "examples/*.lua")

install(DIRECTORY ${script_dirs}
        DESTINATION "${BN_USER_PLUGINS_DIR}/../scripts")

install(FILES ${scripts}
        DESTINATION "${BN_USER_PLUGINS_DIR}/../scripts")