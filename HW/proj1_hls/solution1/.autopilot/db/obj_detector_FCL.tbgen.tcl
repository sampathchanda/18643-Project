set moduleName obj_detector_FCL
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector_FCL}
set C_modelType { float 32 }
set C_modelArgList { 
	{ inp float 32 regular {array 864 { 1 3 } 1 1 }  }
	{ W float 32 regular {bram 1728 { 1 3 } 1 1 }  }
	{ W_offset int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "W", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "W_offset", "interface" : "wire", "bitwidth" : 1 ,"direction" : "READONLY" } , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inp_address0 sc_out sc_lv 10 signal 0 } 
	{ inp_ce0 sc_out sc_logic 1 signal 0 } 
	{ inp_q0 sc_in sc_lv 32 signal 0 } 
	{ W_Addr_A sc_out sc_lv 32 signal 1 } 
	{ W_EN_A sc_out sc_logic 1 signal 1 } 
	{ W_WEN_A sc_out sc_lv 4 signal 1 } 
	{ W_Din_A sc_out sc_lv 32 signal 1 } 
	{ W_Dout_A sc_in sc_lv 32 signal 1 } 
	{ W_offset sc_in sc_lv 1 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inp", "role": "address0" }} , 
 	{ "name": "inp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp", "role": "ce0" }} , 
 	{ "name": "inp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp", "role": "q0" }} , 
 	{ "name": "W_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "Addr_A" }} , 
 	{ "name": "W_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "EN_A" }} , 
 	{ "name": "W_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "WEN_A" }} , 
 	{ "name": "W_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "Din_A" }} , 
 	{ "name": "W_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "Dout_A" }} , 
 	{ "name": "W_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	inp { ap_memory {  { inp_address0 mem_address 1 10 }  { inp_ce0 mem_ce 1 1 }  { inp_q0 mem_dout 0 32 } } }
	W { bram {  { W_Addr_A mem_address 1 32 }  { W_EN_A mem_ce 1 1 }  { W_WEN_A mem_we 1 4 }  { W_Din_A mem_din 1 32 }  { W_Dout_A mem_dout 0 32 } } }
	W_offset { ap_none {  { W_offset in_data 0 1 } } }
}
