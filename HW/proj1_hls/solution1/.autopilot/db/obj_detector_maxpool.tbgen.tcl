set moduleName obj_detector_maxpool
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector_maxpool}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inp float 32 regular {array 3456 { 1 1 } 1 1 }  }
	{ tmp_6 int 3 regular  }
	{ out_0 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_1 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_2 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_3 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_4 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_5 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_6 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_7 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_8 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_9 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_10 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ out_11 float 32 regular {array 72 { 0 3 } 0 1 }  }
	{ tmp_61 int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "tmp_6", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } , 
 	{ "Name" : "out_0", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_1", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_2", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_3", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_4", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_5", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_6", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_7", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_8", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_9", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_10", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "out_11", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "tmp_61", "interface" : "wire", "bitwidth" : 3 ,"direction" : "READONLY" } ]}
# RTL Port declarations: 
set portNum 62
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
	{ inp_address1 sc_out sc_lv 12 signal 0 } 
	{ inp_ce1 sc_out sc_logic 1 signal 0 } 
	{ inp_q1 sc_in sc_lv 32 signal 0 } 
	{ tmp_6 sc_in sc_lv 3 signal 1 } 
	{ out_0_address0 sc_out sc_lv 7 signal 2 } 
	{ out_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_0_we0 sc_out sc_logic 1 signal 2 } 
	{ out_0_d0 sc_out sc_lv 32 signal 2 } 
	{ out_1_address0 sc_out sc_lv 7 signal 3 } 
	{ out_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_1_we0 sc_out sc_logic 1 signal 3 } 
	{ out_1_d0 sc_out sc_lv 32 signal 3 } 
	{ out_2_address0 sc_out sc_lv 7 signal 4 } 
	{ out_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_2_we0 sc_out sc_logic 1 signal 4 } 
	{ out_2_d0 sc_out sc_lv 32 signal 4 } 
	{ out_3_address0 sc_out sc_lv 7 signal 5 } 
	{ out_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_3_we0 sc_out sc_logic 1 signal 5 } 
	{ out_3_d0 sc_out sc_lv 32 signal 5 } 
	{ out_4_address0 sc_out sc_lv 7 signal 6 } 
	{ out_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_4_we0 sc_out sc_logic 1 signal 6 } 
	{ out_4_d0 sc_out sc_lv 32 signal 6 } 
	{ out_5_address0 sc_out sc_lv 7 signal 7 } 
	{ out_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_5_we0 sc_out sc_logic 1 signal 7 } 
	{ out_5_d0 sc_out sc_lv 32 signal 7 } 
	{ out_6_address0 sc_out sc_lv 7 signal 8 } 
	{ out_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ out_6_we0 sc_out sc_logic 1 signal 8 } 
	{ out_6_d0 sc_out sc_lv 32 signal 8 } 
	{ out_7_address0 sc_out sc_lv 7 signal 9 } 
	{ out_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ out_7_we0 sc_out sc_logic 1 signal 9 } 
	{ out_7_d0 sc_out sc_lv 32 signal 9 } 
	{ out_8_address0 sc_out sc_lv 7 signal 10 } 
	{ out_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ out_8_we0 sc_out sc_logic 1 signal 10 } 
	{ out_8_d0 sc_out sc_lv 32 signal 10 } 
	{ out_9_address0 sc_out sc_lv 7 signal 11 } 
	{ out_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ out_9_we0 sc_out sc_logic 1 signal 11 } 
	{ out_9_d0 sc_out sc_lv 32 signal 11 } 
	{ out_10_address0 sc_out sc_lv 7 signal 12 } 
	{ out_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ out_10_we0 sc_out sc_logic 1 signal 12 } 
	{ out_10_d0 sc_out sc_lv 32 signal 12 } 
	{ out_11_address0 sc_out sc_lv 7 signal 13 } 
	{ out_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ out_11_we0 sc_out sc_logic 1 signal 13 } 
	{ out_11_d0 sc_out sc_lv 32 signal 13 } 
	{ tmp_61 sc_in sc_lv 3 signal 14 } 
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
 	{ "name": "inp_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "inp", "role": "address1" }} , 
 	{ "name": "inp_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp", "role": "ce1" }} , 
 	{ "name": "inp_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp", "role": "q1" }} , 
 	{ "name": "tmp_6", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_6", "role": "default" }} , 
 	{ "name": "out_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_0", "role": "address0" }} , 
 	{ "name": "out_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "ce0" }} , 
 	{ "name": "out_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "we0" }} , 
 	{ "name": "out_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_0", "role": "d0" }} , 
 	{ "name": "out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_1", "role": "address0" }} , 
 	{ "name": "out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_1", "role": "ce0" }} , 
 	{ "name": "out_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_1", "role": "we0" }} , 
 	{ "name": "out_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_1", "role": "d0" }} , 
 	{ "name": "out_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_2", "role": "address0" }} , 
 	{ "name": "out_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_2", "role": "ce0" }} , 
 	{ "name": "out_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_2", "role": "we0" }} , 
 	{ "name": "out_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_2", "role": "d0" }} , 
 	{ "name": "out_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_3", "role": "address0" }} , 
 	{ "name": "out_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_3", "role": "ce0" }} , 
 	{ "name": "out_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_3", "role": "we0" }} , 
 	{ "name": "out_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_3", "role": "d0" }} , 
 	{ "name": "out_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_4", "role": "address0" }} , 
 	{ "name": "out_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_4", "role": "ce0" }} , 
 	{ "name": "out_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_4", "role": "we0" }} , 
 	{ "name": "out_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_4", "role": "d0" }} , 
 	{ "name": "out_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_5", "role": "address0" }} , 
 	{ "name": "out_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_5", "role": "ce0" }} , 
 	{ "name": "out_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_5", "role": "we0" }} , 
 	{ "name": "out_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_5", "role": "d0" }} , 
 	{ "name": "out_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_6", "role": "address0" }} , 
 	{ "name": "out_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_6", "role": "ce0" }} , 
 	{ "name": "out_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_6", "role": "we0" }} , 
 	{ "name": "out_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_6", "role": "d0" }} , 
 	{ "name": "out_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_7", "role": "address0" }} , 
 	{ "name": "out_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_7", "role": "ce0" }} , 
 	{ "name": "out_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_7", "role": "we0" }} , 
 	{ "name": "out_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_7", "role": "d0" }} , 
 	{ "name": "out_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_8", "role": "address0" }} , 
 	{ "name": "out_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_8", "role": "ce0" }} , 
 	{ "name": "out_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_8", "role": "we0" }} , 
 	{ "name": "out_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_8", "role": "d0" }} , 
 	{ "name": "out_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_9", "role": "address0" }} , 
 	{ "name": "out_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_9", "role": "ce0" }} , 
 	{ "name": "out_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_9", "role": "we0" }} , 
 	{ "name": "out_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_9", "role": "d0" }} , 
 	{ "name": "out_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_10", "role": "address0" }} , 
 	{ "name": "out_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_10", "role": "ce0" }} , 
 	{ "name": "out_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_10", "role": "we0" }} , 
 	{ "name": "out_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_10", "role": "d0" }} , 
 	{ "name": "out_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_11", "role": "address0" }} , 
 	{ "name": "out_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_11", "role": "ce0" }} , 
 	{ "name": "out_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_11", "role": "we0" }} , 
 	{ "name": "out_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_11", "role": "d0" }} , 
 	{ "name": "tmp_61", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_61", "role": "default" }}  ]}
set Spec2ImplPortList { 
	inp { ap_memory {  { inp_address0 mem_address 1 12 }  { inp_ce0 mem_ce 1 1 }  { inp_q0 mem_dout 0 32 }  { inp_address1 mem_address 1 12 }  { inp_ce1 mem_ce 1 1 }  { inp_q1 mem_dout 0 32 } } }
	tmp_6 { ap_none {  { tmp_6 in_data 0 3 } } }
	out_0 { ap_memory {  { out_0_address0 mem_address 1 7 }  { out_0_ce0 mem_ce 1 1 }  { out_0_we0 mem_we 1 1 }  { out_0_d0 mem_din 1 32 } } }
	out_1 { ap_memory {  { out_1_address0 mem_address 1 7 }  { out_1_ce0 mem_ce 1 1 }  { out_1_we0 mem_we 1 1 }  { out_1_d0 mem_din 1 32 } } }
	out_2 { ap_memory {  { out_2_address0 mem_address 1 7 }  { out_2_ce0 mem_ce 1 1 }  { out_2_we0 mem_we 1 1 }  { out_2_d0 mem_din 1 32 } } }
	out_3 { ap_memory {  { out_3_address0 mem_address 1 7 }  { out_3_ce0 mem_ce 1 1 }  { out_3_we0 mem_we 1 1 }  { out_3_d0 mem_din 1 32 } } }
	out_4 { ap_memory {  { out_4_address0 mem_address 1 7 }  { out_4_ce0 mem_ce 1 1 }  { out_4_we0 mem_we 1 1 }  { out_4_d0 mem_din 1 32 } } }
	out_5 { ap_memory {  { out_5_address0 mem_address 1 7 }  { out_5_ce0 mem_ce 1 1 }  { out_5_we0 mem_we 1 1 }  { out_5_d0 mem_din 1 32 } } }
	out_6 { ap_memory {  { out_6_address0 mem_address 1 7 }  { out_6_ce0 mem_ce 1 1 }  { out_6_we0 mem_we 1 1 }  { out_6_d0 mem_din 1 32 } } }
	out_7 { ap_memory {  { out_7_address0 mem_address 1 7 }  { out_7_ce0 mem_ce 1 1 }  { out_7_we0 mem_we 1 1 }  { out_7_d0 mem_din 1 32 } } }
	out_8 { ap_memory {  { out_8_address0 mem_address 1 7 }  { out_8_ce0 mem_ce 1 1 }  { out_8_we0 mem_we 1 1 }  { out_8_d0 mem_din 1 32 } } }
	out_9 { ap_memory {  { out_9_address0 mem_address 1 7 }  { out_9_ce0 mem_ce 1 1 }  { out_9_we0 mem_we 1 1 }  { out_9_d0 mem_din 1 32 } } }
	out_10 { ap_memory {  { out_10_address0 mem_address 1 7 }  { out_10_ce0 mem_ce 1 1 }  { out_10_we0 mem_we 1 1 }  { out_10_d0 mem_din 1 32 } } }
	out_11 { ap_memory {  { out_11_address0 mem_address 1 7 }  { out_11_ce0 mem_ce 1 1 }  { out_11_we0 mem_we 1 1 }  { out_11_d0 mem_din 1 32 } } }
	tmp_61 { ap_none {  { tmp_61 in_data 0 3 } } }
}
