set moduleName feature_extractor_maxpool
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {feature_extractor_maxpool}
set C_modelType { void 0 }
set C_modelArgList { 
	{ input_mat float 32 regular {array 3456 { 1 3 } 1 1 }  }
	{ tmp_4 int 3 regular  }
	{ output_mat int 32 regular {array 864 { 0 3 } 0 1 }  }
	{ tmp_41 int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_mat", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "tmp_4", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } , 
 	{ "Name" : "output_mat", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "tmp_41", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_mat_address0 sc_out sc_lv 12 signal 0 } 
	{ input_mat_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_mat_q0 sc_in sc_lv 32 signal 0 } 
	{ tmp_4 sc_in sc_lv 3 signal 1 } 
	{ output_mat_address0 sc_out sc_lv 10 signal 2 } 
	{ output_mat_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_mat_we0 sc_out sc_logic 1 signal 2 } 
	{ output_mat_d0 sc_out sc_lv 32 signal 2 } 
	{ tmp_41 sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_mat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_mat", "role": "address0" }} , 
 	{ "name": "input_mat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_mat", "role": "ce0" }} , 
 	{ "name": "input_mat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_mat", "role": "q0" }} , 
 	{ "name": "tmp_4", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_4", "role": "default" }} , 
 	{ "name": "output_mat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_mat", "role": "address0" }} , 
 	{ "name": "output_mat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_mat", "role": "ce0" }} , 
 	{ "name": "output_mat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_mat", "role": "we0" }} , 
 	{ "name": "output_mat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_mat", "role": "d0" }} , 
 	{ "name": "tmp_41", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_41", "role": "default" }}  ]}
set Spec2ImplPortList { 
	input_mat { ap_memory {  { input_mat_address0 mem_address 1 12 }  { input_mat_ce0 mem_ce 1 1 }  { input_mat_q0 mem_dout 0 32 } } }
	tmp_4 { ap_none {  { tmp_4 in_data 0 3 } } }
	output_mat { ap_memory {  { output_mat_address0 mem_address 1 10 }  { output_mat_ce0 mem_ce 1 1 }  { output_mat_we0 mem_we 1 1 }  { output_mat_d0 mem_din 1 32 } } }
	tmp_41 { ap_none {  { tmp_41 in_data 0 3 } } }
}
