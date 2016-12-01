set moduleName obj_detector_softmax
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector_softmax}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inp_0_read float 32 regular  }
	{ inp_1_read float 32 regular  }
	{ out_r float 32 regular {bram 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp_0_read", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_1_read", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "out_r", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inp_0_read sc_in sc_lv 32 signal 0 } 
	{ inp_1_read sc_in sc_lv 32 signal 1 } 
	{ out_r_Addr_A sc_out sc_lv 32 signal 2 } 
	{ out_r_EN_A sc_out sc_logic 1 signal 2 } 
	{ out_r_WEN_A sc_out sc_lv 4 signal 2 } 
	{ out_r_Din_A sc_out sc_lv 32 signal 2 } 
	{ out_r_Dout_A sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inp_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_0_read", "role": "default" }} , 
 	{ "name": "inp_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_1_read", "role": "default" }} , 
 	{ "name": "out_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Addr_A" }} , 
 	{ "name": "out_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "EN_A" }} , 
 	{ "name": "out_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "WEN_A" }} , 
 	{ "name": "out_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Din_A" }} , 
 	{ "name": "out_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Dout_A" }}  ]}
set Spec2ImplPortList { 
	inp_0_read { ap_none {  { inp_0_read in_data 0 32 } } }
	inp_1_read { ap_none {  { inp_1_read in_data 0 32 } } }
	out_r { bram {  { out_r_Addr_A mem_address 1 32 }  { out_r_EN_A mem_ce 1 1 }  { out_r_WEN_A mem_we 1 4 }  { out_r_Din_A mem_din 1 32 }  { out_r_Dout_A mem_dout 0 32 } } }
}
