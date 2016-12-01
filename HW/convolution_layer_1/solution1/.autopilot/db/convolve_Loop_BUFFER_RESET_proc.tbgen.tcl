set moduleName convolve_Loop_BUFFER_RESET_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {convolve_Loop_BUFFER_RESET_proc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ image_V int 8 regular {axi_s 0 volatile  { image_V data } }  }
	{ weights float 32 regular {bram 25 { 1 1 } 1 1 }  }
	{ conv_output_V int 8 regular {axi_s 1 volatile  { conv_output_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "READONLY" } , 
 	{ "Name" : "weights", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "conv_output_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ image_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ image_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ image_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ weights_Addr_A sc_out sc_lv 32 signal 1 } 
	{ weights_EN_A sc_out sc_logic 1 signal 1 } 
	{ weights_WEN_A sc_out sc_lv 4 signal 1 } 
	{ weights_Din_A sc_out sc_lv 32 signal 1 } 
	{ weights_Dout_A sc_in sc_lv 32 signal 1 } 
	{ weights_Addr_B sc_out sc_lv 32 signal 1 } 
	{ weights_EN_B sc_out sc_logic 1 signal 1 } 
	{ weights_WEN_B sc_out sc_lv 4 signal 1 } 
	{ weights_Din_B sc_out sc_lv 32 signal 1 } 
	{ weights_Dout_B sc_in sc_lv 32 signal 1 } 
	{ conv_output_V_TDATA sc_out sc_lv 8 signal 2 } 
	{ conv_output_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ conv_output_V_TREADY sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_V", "role": "TDATA" }} , 
 	{ "name": "image_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_V", "role": "TVALID" }} , 
 	{ "name": "image_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_V", "role": "TREADY" }} , 
 	{ "name": "weights_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "Addr_A" }} , 
 	{ "name": "weights_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "EN_A" }} , 
 	{ "name": "weights_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "WEN_A" }} , 
 	{ "name": "weights_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "Din_A" }} , 
 	{ "name": "weights_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "Dout_A" }} , 
 	{ "name": "weights_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "Addr_B" }} , 
 	{ "name": "weights_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "EN_B" }} , 
 	{ "name": "weights_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "WEN_B" }} , 
 	{ "name": "weights_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "Din_B" }} , 
 	{ "name": "weights_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "Dout_B" }} , 
 	{ "name": "conv_output_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_output_V", "role": "TDATA" }} , 
 	{ "name": "conv_output_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv_output_V", "role": "TVALID" }} , 
 	{ "name": "conv_output_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "conv_output_V", "role": "TREADY" }}  ]}
set Spec2ImplPortList { 
	image_V { axis {  { image_V_TDATA in_data 0 8 }  { image_V_TVALID in_vld 0 1 }  { image_V_TREADY in_acc 1 1 } } }
	weights { bram {  { weights_Addr_A mem_address 1 32 }  { weights_EN_A mem_ce 1 1 }  { weights_WEN_A mem_we 1 4 }  { weights_Din_A mem_din 1 32 }  { weights_Dout_A mem_dout 0 32 }  { weights_Addr_B mem_address 1 32 }  { weights_EN_B mem_ce 1 1 }  { weights_WEN_B mem_we 1 4 }  { weights_Din_B mem_din 1 32 }  { weights_Dout_B mem_dout 0 32 } } }
	conv_output_V { axis {  { conv_output_V_TDATA out_data 1 8 }  { conv_output_V_TVALID out_vld 1 1 }  { conv_output_V_TREADY out_acc 0 1 } } }
}
