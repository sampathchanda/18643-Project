set C_TypeInfoList {{ 
"convolve" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"image": [[], {"reference": "0"}] }, {"weights": [[], {"array": [ {"scalar": "float"}, [25]]}] }, {"conv_output": [[], {"reference": "0"}] }, {"done": [[],{ "pointer":  {"scalar": "bool"}}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"1"]}}],
"1": ["hls", ""]
}}
set moduleName convolve
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {convolve}
set C_modelType { void 0 }
set C_modelArgList { 
	{ image_V int 8 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 25 { 1 1 } 1 1 }  }
	{ conv_output_V int 8 regular {fifo 1 volatile }  }
	{ done int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "image.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weights","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 24,"step" : 1}]}]}]} , 
 	{ "Name" : "conv_output_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "conv_output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "done", "interface" : "wire", "bitwidth" : 1 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "done","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ image_V_dout sc_in sc_lv 8 signal 0 } 
	{ image_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ image_V_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 5 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_d0 sc_out sc_lv 32 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ weights_we0 sc_out sc_logic 1 signal 1 } 
	{ weights_address1 sc_out sc_lv 5 signal 1 } 
	{ weights_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights_d1 sc_out sc_lv 32 signal 1 } 
	{ weights_q1 sc_in sc_lv 32 signal 1 } 
	{ weights_we1 sc_out sc_logic 1 signal 1 } 
	{ conv_output_V_din sc_out sc_lv 8 signal 2 } 
	{ conv_output_V_full_n sc_in sc_logic 1 signal 2 } 
	{ conv_output_V_write sc_out sc_logic 1 signal 2 } 
	{ done sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "image_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_V", "role": "dout" }} , 
 	{ "name": "image_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "empty_n" }} , 
 	{ "name": "image_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "d0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "weights_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "we0" }} , 
 	{ "name": "weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "weights", "role": "address1" }} , 
 	{ "name": "weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce1" }} , 
 	{ "name": "weights_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "d1" }} , 
 	{ "name": "weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q1" }} , 
 	{ "name": "weights_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "we1" }} , 
 	{ "name": "conv_output_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_output_V", "role": "din" }} , 
 	{ "name": "conv_output_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V", "role": "full_n" }} , 
 	{ "name": "conv_output_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V", "role": "write" }} , 
 	{ "name": "done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "done", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}
set Spec2ImplPortList { 
	image_V { ap_fifo {  { image_V_dout fifo_data 0 8 }  { image_V_empty_n fifo_status 0 1 }  { image_V_read fifo_update 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 5 }  { weights_ce0 mem_ce 1 1 }  { weights_d0 mem_din 1 32 }  { weights_q0 mem_dout 0 32 }  { weights_we0 mem_we 1 1 }  { weights_address1 mem_address 1 5 }  { weights_ce1 mem_ce 1 1 }  { weights_d1 mem_din 1 32 }  { weights_q1 mem_dout 0 32 }  { weights_we1 mem_we 1 1 } } }
	conv_output_V { ap_fifo {  { conv_output_V_din fifo_data 1 8 }  { conv_output_V_full_n fifo_status 0 1 }  { conv_output_V_write fifo_update 1 1 } } }
	done { ap_none {  { done out_data 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	image_V { fifo_read 1 no_conditional }
	conv_output_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
