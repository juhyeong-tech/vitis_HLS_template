cmake_minimum_required(VERSION 3.13)
project(vitis_hls_template)

# GTest
enable_testing()
add_subdirectory(lib/googletest)

# include
include_directories(
    include
    modules/A/include
    modules/B/include
    /Tools/Xilinx/Vitis_hls/2022.1/include
)

# src
set(TB_FILE tb/testbench.cc)
set(UNIT_TB_FILE tb/unittest.cc)
set(TOP_FILE src/top.cc)

# Modules
add_subdirectory(modules/A)
add_subdirectory(modules/B)

# executables
add_executable(unittest tb/unittest.cc)
add_executable(tb tb/testbench.cc)
target_link_libraries(unittest PRIVATE gtest gtest_main lib_A lib_B)
target_link_libraries(tb PRIVATE lib_A lib_B)
