cmake_minimum_required(VERSION 3.11)
project(module_A)

# preprocessor
add_library(lib_A STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/A.cc)
target_include_directories(lib_A PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)
