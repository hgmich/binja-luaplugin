cmake_minimum_required(VERSION 3.9 FATAL_ERROR)

include("${ROOT_DIR}/vendor/cmake-bin2h/bin2h.cmake")

file(WRITE "${LUA_EMBED_HEADER}" "")
file(GLOB luaembed_files "${LUA_EMBED_FILES}")
foreach (file ${luaembed_files})
    get_filename_component(LUA_EMBED_VAR_STEM "${file}" NAME_WLE)
    string(CONCAT LUA_EMBED_VAR "LUA_CHUNK_" "${LUA_EMBED_VAR_STEM}")
    bin2h(SOURCE_FILE "${file}"
            HEADER_FILE "${LUA_EMBED_HEADER}"
            VARIABLE_NAME "${LUA_EMBED_VAR}"
            APPEND
            NULL_TERMINATE)
endforeach ()