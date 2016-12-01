############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_interface -mode bram "obj_detector" A
set_directive_interface -mode bram "obj_detector" W0
set_directive_interface -mode bram "obj_detector" W1
set_directive_interface -mode bram "obj_detector" res
set_directive_unroll "convolve/convolve_label3"
set_directive_resource -core RAM_1P_BRAM "obj_detector" A
set_directive_resource -core RAM_1P_BRAM "obj_detector" W0
set_directive_pipeline "convolve/convolve_label5"
set_directive_pipeline "maxpool/maxpool_label6"
set_directive_pipeline "flatten/flatten_label7"
set_directive_pipeline "FCL/FCL_label8"
