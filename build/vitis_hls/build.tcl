open_project vitis_hls_template
add_files ../../src/top.cc
add_files ../../src/top.h
add_files -tb ../../src/tb.cc
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 3.3 -name default
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
