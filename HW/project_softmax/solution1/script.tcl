############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project project_softmax
set_top softmax
add_files obj_detector.cpp
add_files obj_detector.h
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./project_softmax/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
