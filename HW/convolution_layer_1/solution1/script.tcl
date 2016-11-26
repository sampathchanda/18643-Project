############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project convolution_layer_1
set_top convolve
add_files convolution_layer_1/.settings/convolution_layer_1.cpp
add_files convolution_layer_1/.settings/convolution_layer_1.h
add_files -tb convolution_layer_1/.settings/convolution_layer_tb.cpp
add_files -tb convolution_layer_1/images1
add_files -tb convolution_layer_1/weights
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./convolution_layer_1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
