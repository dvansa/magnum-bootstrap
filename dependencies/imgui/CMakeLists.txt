cmake_minimum_required(VERSION 2.8.12)
project(ImGui)

set(IMGUI_DIR ${CMAKE_CURRENT_SOURCE_DIR}/imgui CACHE PATH "ImGui repo path")

include_directories(${IMGUI_DIR})

add_library(ImGui STATIC ${IMGUI_DIR}/imgui.cpp
						 ${IMGUI_DIR}/imgui_draw.cpp
						 ${IMGUI_DIR}/imgui_demo.cpp )

set_target_properties(ImGui PROPERTIES PUBLIC_HEADER "${IMGUI_DIR}/imgui.h")

install(TARGETS ImGui LIBRARY DESTINATION lib
					  ARCHIVE DESTINATION lib
					  PUBLIC_HEADER DESTINATION include/imgui)