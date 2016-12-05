set moduleName obj_detector_convolve
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector_convolve}
set C_modelType { void 0 }
set C_modelArgList { 
	{ A float 32 regular {array 784 { 1 1 } 1 1 }  }
	{ B float 32 regular {array 150 { 1 1 } 1 1 }  }
	{ tmp_20 int 3 regular  }
	{ conv float 32 regular {array 3456 { 0 0 } 0 1 }  }
	{ tmp_201 int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "tmp_20", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } , 
 	{ "Name" : "conv", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "tmp_201", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 10 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ A_address1 sc_out sc_lv 10 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ B_address0 sc_out sc_lv 8 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_q0 sc_in sc_lv 32 signal 1 } 
	{ B_address1 sc_out sc_lv 8 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
	{ tmp_20 sc_in sc_lv 3 signal 2 } 
	{ conv_address0 sc_out sc_lv 12 signal 3 } 
	{ conv_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv_we0 sc_out sc_logic 1 signal 3 } 
	{ conv_d0 sc_out sc_lv 32 signal 3 } 
	{ conv_address1 sc_out sc_lv 12 signal 3 } 
	{ conv_ce1 sc_out sc_logic 1 signal 3 } 
	{ conv_we1 sc_out sc_logic 1 signal 3 } 
	{ conv_d1 sc_out sc_lv 32 signal 3 } 
	{ tmp_201 sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "tmp_20", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_20", "role": "default" }} , 
 	{ "name": "conv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "conv", "role": "address0" }} , 
 	{ "name": "conv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv", "role": "ce0" }} , 
 	{ "name": "conv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv", "role": "we0" }} , 
 	{ "name": "conv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv", "role": "d0" }} , 
 	{ "name": "conv_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "conv", "role": "address1" }} , 
 	{ "name": "conv_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv", "role": "ce1" }} , 
 	{ "name": "conv_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv", "role": "we1" }} , 
 	{ "name": "conv_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv", "role": "d1" }} , 
 	{ "name": "tmp_201", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_201", "role": "default" }}  ]}
set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 mem_address 1 10 }  { A_ce1 mem_ce 1 1 }  { A_q1 mem_dout 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 8 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 32 }  { B_address1 mem_address 1 8 }  { B_ce1 mem_ce 1 1 }  { B_q1 mem_dout 0 32 } } }
	tmp_20 { ap_none {  { tmp_20 in_data 0 3 } } }
	conv { ap_memory {  { conv_address0 mem_address 1 12 }  { conv_ce0 mem_ce 1 1 }  { conv_we0 mem_we 1 1 }  { conv_d0 mem_din 1 32 }  { conv_address1 mem_address 1 12 }  { conv_ce1 mem_ce 1 1 }  { conv_we1 mem_we 1 1 }  { conv_d1 mem_din 1 32 } } }
	tmp_201 { ap_none {  { tmp_201 in_data 0 3 } } }
}
