############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project cnn_layer_2
set_top feature_extractor
add_files cnn_layer_2/.settings/feature_descriminator.c
add_files -tb cnn_layer_2/.settings/feature_descriminator.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./cnn_layer_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
