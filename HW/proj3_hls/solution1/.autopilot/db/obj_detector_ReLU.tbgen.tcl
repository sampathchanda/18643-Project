set moduleName obj_detector_ReLU
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector_ReLU}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inp float 32 regular {array 3456 { 1 3 } 1 1 }  }
	{ tmp_21 int 3 regular  }
	{ out_r float 32 regular {array 3456 { 0 3 } 0 1 }  }
	{ tmp_211 int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "tmp_21", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "tmp_211", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inp_address0 sc_out sc_lv 12 signal 0 } 
	{ inp_ce0 sc_out sc_logic 1 signal 0 } 
	{ inp_q0 sc_in sc_lv 32 signal 0 } 
	{ tmp_21 sc_in sc_lv 3 signal 1 } 
	{ out_r_address0 sc_out sc_lv 12 signal 2 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_r_we0 sc_out sc_logic 1 signal 2 } 
	{ out_r_d0 sc_out sc_lv 32 signal 2 } 
	{ tmp_211 sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "inp", "role": "address0" }} , 
 	{ "name": "inp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp", "role": "ce0" }} , 
 	{ "name": "inp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp", "role": "q0" }} , 
 	{ "name": "tmp_21", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_21", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "tmp_211", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_211", "role": "default" }}  ]}
set Spec2ImplPortList { 
	inp { ap_memory {  { inp_address0 mem_address 1 12 }  { inp_ce0 mem_ce 1 1 }  { inp_q0 mem_dout 0 32 } } }
	tmp_21 { ap_none {  { tmp_21 in_data 0 3 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 12 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
	tmp_211 { ap_none {  { tmp_211 in_data 0 3 } } }
}
