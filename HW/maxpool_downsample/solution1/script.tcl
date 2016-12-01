############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project maxpool_downsample
set_top maxpool
add_files maxpool_downsample/.settings/maxpool_downsample.h
add_files maxpool_downsample/.settings/maxpool_downsample.cpp
add_files -tb maxpool_downsample/.settings/maxpool_downsample_tb.cpp
add_files -tb maxpool_downsample/.settings/input
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./maxpool_downsample/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
