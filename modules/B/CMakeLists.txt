cmake_minimum_required(VERSION 3.11)
project(module_B)

# preprocessor
add_library(lib_B STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/B.cc)
target_include_directories(lib_B PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)
