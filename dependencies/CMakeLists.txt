cmake_minimum_required(VERSION 2.8.12)
project(Dependencies)

 SET(PLATFORM "windows" CACHE STRING "Platforms available : windows" FORCE)

#Set install path to /dependencies dir
IF(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  SET(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/${PLATFORM} CACHE PATH "Install path" FORCE)
ENDIF(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

#Add dependencies
add_subdirectory(glfw)
add_subdirectory(corrade)
add_subdirectory(magnum)
add_subdirectory(imgui)

