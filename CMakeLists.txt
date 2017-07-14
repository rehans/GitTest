cmake_minimum_required (VERSION 3.0)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}")

project (Jack2SimpleClient)
include(FindJack)
include_directories (Jack2SimpleClient)
add_executable (Jack2SimpleClient main.cpp)
target_link_libraries(Jack2SimpleClient PRIVATE ${LIBJACK_LIBRARY} "Psapi.lib")
target_include_directories(Jack2SimpleClient PRIVATE ${LIBJACK_INCLUDE_DIR})