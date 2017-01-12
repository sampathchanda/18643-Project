############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_unroll "convolve/convolve_label3"
set_directive_pipeline "convolve/convolve_label5"
set_directive_pipeline "maxpool/maxpool_label6"
set_directive_pipeline "flatten/flatten_label7"
set_directive_pipeline -II 1 "FCL/FCL_label8"
set_directive_pipeline "softmax/softmax_label9"
set_directive_pipeline "softmax/softmax_label10"
set_directive_pipeline "ReLU/ReLU_label0"
set_directive_unroll "ReLU/ReLU_label1"
set_directive_resource -core DSP48 "calc_fmax" return
set_directive_resource -core FMul_fulldsp "calc_fmul" return
set_directive_resource -core FExp_fulldsp "calc_exp" return
set_directive_resource -core FDiv "calc_fdiv" return
set_directive_pipeline "obj_detector/FCL_label:"
set_directive_unroll "convolve_5x5/convolve_5x5_label2"
set_directive_pipeline "convolve/convolve_label1"
