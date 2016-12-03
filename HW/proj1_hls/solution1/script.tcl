############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project proj1_hls
set_top obj_detector
add_files proj1_hls/obj_detector.cpp
add_files proj1_hls/obj_detector.h
add_files -tb proj1_hls/obj_detector_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 20 -name default
source "./proj1_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
