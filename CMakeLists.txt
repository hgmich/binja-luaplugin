cmake_minimum_required(VERSION 3.9 FATAL_ERROR)

project(luaplugin)

add_executable(generator
        "${PROJECT_SOURCE_DIR}/generator.cpp")
target_link_libraries(generator binaryninjaapi)

set_target_properties(generator PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED ON
        BUILD_WITH_INSTALL_RPATH OFF
        RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

set(ROOT_DIR ${PROJECT_SOURCE_DIR})

option(USE_VENDORED_LUAJIT "Build against bundled LuaJIT" ON)
set(LUA_BUILD_COMPILER OFF CACHE INTERNAL "")
set(LUA_BUILD_INTERPRETER OFF CACHE INTERNAL "")

if (USE_VENDORED_LUAJIT)
    set(LUAJIT_DIR "${ROOT_DIR}/vendor/luajit")
    #    add_subdirectory(vendor/lua)
    add_subdirectory(vendor/luajit-cmake)
else ()
    find_package(Lua REQUIRED)
endif ()

#find_package(Lua REQUIRED)

include("${ROOT_DIR}/vendor/cmake-bin2h/bin2h.cmake")

file(WRITE "${CMAKE_BINARY_DIR}/luaembed.h" "")
file(GLOB luaembed_files "${ROOT_DIR}/luaembed/*.lua")
foreach (file ${luaembed_files})
    get_filename_component(LUA_EMBED_VAR_STEM "${file}" NAME_WLE)
    string(CONCAT LUA_EMBED_VAR "LUA_CHUNK_" "${LUA_EMBED_VAR_STEM}")
    bin2h(SOURCE_FILE "${file}"
            HEADER_FILE "${CMAKE_BINARY_DIR}/luaembed.h"
            VARIABLE_NAME "${LUA_EMBED_VAR}"
            APPEND
            NULL_TERMINATE)
endforeach ()

if (NOT BN_API_PATH)
    set(BN_API_PATH $ENV{BN_API_PATH})
    if (NOT BN_API_PATH)
        message(FATAL_ERROR " Provide path to Binary Ninja API source in BN_API_PATH ")
    endif ()
endif ()
add_subdirectory(${BN_API_PATH} ${PROJECT_BINARY_DIR}/api)

file(GLOB SOURCES
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

