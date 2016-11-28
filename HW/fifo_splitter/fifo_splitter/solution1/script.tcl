############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project fifo_splitter
set_top splitter
add_files fifo_splitter/.settings/fifo_splitter.cpp
add_files fifo_splitter/.settings/fifo_splitter.h
add_files -tb fifo_splitter/.settings/fifo_splitter_tb.cpp
add_files -tb fifo_splitter/.settings/image
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./fifo_splitter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
