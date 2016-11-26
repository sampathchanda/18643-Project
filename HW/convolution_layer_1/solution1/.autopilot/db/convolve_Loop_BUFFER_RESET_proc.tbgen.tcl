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
	{ weights float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ image_V int 8 regular {fifo 0 volatile }  }
	{ conv_output_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "image_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "READONLY" } , 
 	{ "Name" : "conv_output_V", "interface" : "fifo", "bitwidth" : 32 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weights_address0 sc_out sc_lv 5 signal 0 } 
	{ weights_ce0 sc_out sc_logic 1 signal 0 } 
	{ weights_q0 sc_in sc_lv 32 signal 0 } 
	{ image_V_dout sc_in sc_lv 8 signal 1 } 
	{ image_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ image_V_read sc_out sc_logic 1 signal 1 } 
	{ conv_output_V_din sc_out sc_lv 32 signal 2 } 
	{ conv_output_V_full_n sc_in sc_logic 1 signal 2 } 
	{ conv_output_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "image_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_V", "role": "dout" }} , 
 	{ "name": "image_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "empty_n" }} , 
 	{ "name": "image_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "read" }} , 
 	{ "name": "conv_output_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_output_V", "role": "din" }} , 
 	{ "name": "conv_output_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V", "role": "full_n" }} , 
 	{ "name": "conv_output_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	weights { ap_memory {  { weights_address0 mem_address 1 5 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	image_V { ap_fifo {  { image_V_dout fifo_data 0 8 }  { image_V_empty_n fifo_status 0 1 }  { image_V_read fifo_update 1 1 } } }
	conv_output_V { ap_fifo {  { conv_output_V_din fifo_data 1 32 }  { conv_output_V_full_n fifo_status 0 1 }  { conv_output_V_write fifo_update 1 1 } } }
}
