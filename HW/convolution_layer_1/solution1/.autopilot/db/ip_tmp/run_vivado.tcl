create_project prj -part xc7z020clg484-1 -force
set_property target_language verilog [current_project]
source "/home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution1/syn/verilog/convolve_ap_sitofp_4_no_dsp_32_ip.tcl"
source "/home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution1/syn/verilog/convolve_ap_fadd_3_full_dsp_32_ip.tcl"
source "/home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution1/syn/verilog/convolve_ap_fcmp_0_no_dsp_32_ip.tcl"
source "/home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution1/syn/verilog/convolve_ap_fmul_2_max_dsp_32_ip.tcl"
