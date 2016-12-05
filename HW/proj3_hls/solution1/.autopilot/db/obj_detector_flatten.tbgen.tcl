set moduleName obj_detector_flatten
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector_flatten}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inp_0 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_1 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_2 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_3 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_4 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_5 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_6 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_7 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_8 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_9 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_10 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ inp_11 float 32 regular {array 72 { 1 1 } 1 1 }  }
	{ out_r float 32 regular {array 864 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp_0", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_1", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_2", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_3", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_4", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_5", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_6", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_7", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_8", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_9", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_10", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "inp_11", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 86
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inp_0_address0 sc_out sc_lv 7 signal 0 } 
	{ inp_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ inp_0_q0 sc_in sc_lv 32 signal 0 } 
	{ inp_0_address1 sc_out sc_lv 7 signal 0 } 
	{ inp_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ inp_0_q1 sc_in sc_lv 32 signal 0 } 
	{ inp_1_address0 sc_out sc_lv 7 signal 1 } 
	{ inp_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ inp_1_q0 sc_in sc_lv 32 signal 1 } 
	{ inp_1_address1 sc_out sc_lv 7 signal 1 } 
	{ inp_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ inp_1_q1 sc_in sc_lv 32 signal 1 } 
	{ inp_2_address0 sc_out sc_lv 7 signal 2 } 
	{ inp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ inp_2_q0 sc_in sc_lv 32 signal 2 } 
	{ inp_2_address1 sc_out sc_lv 7 signal 2 } 
	{ inp_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ inp_2_q1 sc_in sc_lv 32 signal 2 } 
	{ inp_3_address0 sc_out sc_lv 7 signal 3 } 
	{ inp_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ inp_3_q0 sc_in sc_lv 32 signal 3 } 
	{ inp_3_address1 sc_out sc_lv 7 signal 3 } 
	{ inp_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ inp_3_q1 sc_in sc_lv 32 signal 3 } 
	{ inp_4_address0 sc_out sc_lv 7 signal 4 } 
	{ inp_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ inp_4_q0 sc_in sc_lv 32 signal 4 } 
	{ inp_4_address1 sc_out sc_lv 7 signal 4 } 
	{ inp_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ inp_4_q1 sc_in sc_lv 32 signal 4 } 
	{ inp_5_address0 sc_out sc_lv 7 signal 5 } 
	{ inp_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ inp_5_q0 sc_in sc_lv 32 signal 5 } 
	{ inp_5_address1 sc_out sc_lv 7 signal 5 } 
	{ inp_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ inp_5_q1 sc_in sc_lv 32 signal 5 } 
	{ inp_6_address0 sc_out sc_lv 7 signal 6 } 
	{ inp_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ inp_6_q0 sc_in sc_lv 32 signal 6 } 
	{ inp_6_address1 sc_out sc_lv 7 signal 6 } 
	{ inp_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ inp_6_q1 sc_in sc_lv 32 signal 6 } 
	{ inp_7_address0 sc_out sc_lv 7 signal 7 } 
	{ inp_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ inp_7_q0 sc_in sc_lv 32 signal 7 } 
	{ inp_7_address1 sc_out sc_lv 7 signal 7 } 
	{ inp_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ inp_7_q1 sc_in sc_lv 32 signal 7 } 
	{ inp_8_address0 sc_out sc_lv 7 signal 8 } 
	{ inp_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ inp_8_q0 sc_in sc_lv 32 signal 8 } 
	{ inp_8_address1 sc_out sc_lv 7 signal 8 } 
	{ inp_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ inp_8_q1 sc_in sc_lv 32 signal 8 } 
	{ inp_9_address0 sc_out sc_lv 7 signal 9 } 
	{ inp_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ inp_9_q0 sc_in sc_lv 32 signal 9 } 
	{ inp_9_address1 sc_out sc_lv 7 signal 9 } 
	{ inp_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ inp_9_q1 sc_in sc_lv 32 signal 9 } 
	{ inp_10_address0 sc_out sc_lv 7 signal 10 } 
	{ inp_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ inp_10_q0 sc_in sc_lv 32 signal 10 } 
	{ inp_10_address1 sc_out sc_lv 7 signal 10 } 
	{ inp_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ inp_10_q1 sc_in sc_lv 32 signal 10 } 
	{ inp_11_address0 sc_out sc_lv 7 signal 11 } 
	{ inp_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ inp_11_q0 sc_in sc_lv 32 signal 11 } 
	{ inp_11_address1 sc_out sc_lv 7 signal 11 } 
	{ inp_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ inp_11_q1 sc_in sc_lv 32 signal 11 } 
	{ out_r_address0 sc_out sc_lv 10 signal 12 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 12 } 
	{ out_r_we0 sc_out sc_logic 1 signal 12 } 
	{ out_r_d0 sc_out sc_lv 32 signal 12 } 
	{ out_r_address1 sc_out sc_lv 10 signal 12 } 
	{ out_r_ce1 sc_out sc_logic 1 signal 12 } 
	{ out_r_we1 sc_out sc_logic 1 signal 12 } 
	{ out_r_d1 sc_out sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inp_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_0", "role": "address0" }} , 
 	{ "name": "inp_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_0", "role": "ce0" }} , 
 	{ "name": "inp_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_0", "role": "q0" }} , 
 	{ "name": "inp_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_0", "role": "address1" }} , 
 	{ "name": "inp_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_0", "role": "ce1" }} , 
 	{ "name": "inp_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_0", "role": "q1" }} , 
 	{ "name": "inp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_1", "role": "address0" }} , 
 	{ "name": "inp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_1", "role": "ce0" }} , 
 	{ "name": "inp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_1", "role": "q0" }} , 
 	{ "name": "inp_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_1", "role": "address1" }} , 
 	{ "name": "inp_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_1", "role": "ce1" }} , 
 	{ "name": "inp_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_1", "role": "q1" }} , 
 	{ "name": "inp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_2", "role": "address0" }} , 
 	{ "name": "inp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_2", "role": "ce0" }} , 
 	{ "name": "inp_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_2", "role": "q0" }} , 
 	{ "name": "inp_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_2", "role": "address1" }} , 
 	{ "name": "inp_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_2", "role": "ce1" }} , 
 	{ "name": "inp_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_2", "role": "q1" }} , 
 	{ "name": "inp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_3", "role": "address0" }} , 
 	{ "name": "inp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_3", "role": "ce0" }} , 
 	{ "name": "inp_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_3", "role": "q0" }} , 
 	{ "name": "inp_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_3", "role": "address1" }} , 
 	{ "name": "inp_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_3", "role": "ce1" }} , 
 	{ "name": "inp_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_3", "role": "q1" }} , 
 	{ "name": "inp_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_4", "role": "address0" }} , 
 	{ "name": "inp_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_4", "role": "ce0" }} , 
 	{ "name": "inp_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_4", "role": "q0" }} , 
 	{ "name": "inp_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_4", "role": "address1" }} , 
 	{ "name": "inp_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_4", "role": "ce1" }} , 
 	{ "name": "inp_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_4", "role": "q1" }} , 
 	{ "name": "inp_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_5", "role": "address0" }} , 
 	{ "name": "inp_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_5", "role": "ce0" }} , 
 	{ "name": "inp_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_5", "role": "q0" }} , 
 	{ "name": "inp_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_5", "role": "address1" }} , 
 	{ "name": "inp_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_5", "role": "ce1" }} , 
 	{ "name": "inp_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_5", "role": "q1" }} , 
 	{ "name": "inp_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_6", "role": "address0" }} , 
 	{ "name": "inp_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_6", "role": "ce0" }} , 
 	{ "name": "inp_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_6", "role": "q0" }} , 
 	{ "name": "inp_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_6", "role": "address1" }} , 
 	{ "name": "inp_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_6", "role": "ce1" }} , 
 	{ "name": "inp_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_6", "role": "q1" }} , 
 	{ "name": "inp_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_7", "role": "address0" }} , 
 	{ "name": "inp_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_7", "role": "ce0" }} , 
 	{ "name": "inp_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_7", "role": "q0" }} , 
 	{ "name": "inp_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_7", "role": "address1" }} , 
 	{ "name": "inp_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_7", "role": "ce1" }} , 
 	{ "name": "inp_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_7", "role": "q1" }} , 
 	{ "name": "inp_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_8", "role": "address0" }} , 
 	{ "name": "inp_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_8", "role": "ce0" }} , 
 	{ "name": "inp_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_8", "role": "q0" }} , 
 	{ "name": "inp_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_8", "role": "address1" }} , 
 	{ "name": "inp_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_8", "role": "ce1" }} , 
 	{ "name": "inp_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_8", "role": "q1" }} , 
 	{ "name": "inp_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_9", "role": "address0" }} , 
 	{ "name": "inp_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_9", "role": "ce0" }} , 
 	{ "name": "inp_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_9", "role": "q0" }} , 
 	{ "name": "inp_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_9", "role": "address1" }} , 
 	{ "name": "inp_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_9", "role": "ce1" }} , 
 	{ "name": "inp_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_9", "role": "q1" }} , 
 	{ "name": "inp_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_10", "role": "address0" }} , 
 	{ "name": "inp_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_10", "role": "ce0" }} , 
 	{ "name": "inp_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_10", "role": "q0" }} , 
 	{ "name": "inp_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_10", "role": "address1" }} , 
 	{ "name": "inp_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_10", "role": "ce1" }} , 
 	{ "name": "inp_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_10", "role": "q1" }} , 
 	{ "name": "inp_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_11", "role": "address0" }} , 
 	{ "name": "inp_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_11", "role": "ce0" }} , 
 	{ "name": "inp_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_11", "role": "q0" }} , 
 	{ "name": "inp_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "inp_11", "role": "address1" }} , 
 	{ "name": "inp_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_11", "role": "ce1" }} , 
 	{ "name": "inp_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_11", "role": "q1" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "out_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_r", "role": "address1" }} , 
 	{ "name": "out_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce1" }} , 
 	{ "name": "out_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we1" }} , 
 	{ "name": "out_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d1" }}  ]}
set Spec2ImplPortList { 
	inp_0 { ap_memory {  { inp_0_address0 mem_address 1 7 }  { inp_0_ce0 mem_ce 1 1 }  { inp_0_q0 mem_dout 0 32 }  { inp_0_address1 mem_address 1 7 }  { inp_0_ce1 mem_ce 1 1 }  { inp_0_q1 mem_dout 0 32 } } }
	inp_1 { ap_memory {  { inp_1_address0 mem_address 1 7 }  { inp_1_ce0 mem_ce 1 1 }  { inp_1_q0 mem_dout 0 32 }  { inp_1_address1 mem_address 1 7 }  { inp_1_ce1 mem_ce 1 1 }  { inp_1_q1 mem_dout 0 32 } } }
	inp_2 { ap_memory {  { inp_2_address0 mem_address 1 7 }  { inp_2_ce0 mem_ce 1 1 }  { inp_2_q0 mem_dout 0 32 }  { inp_2_address1 mem_address 1 7 }  { inp_2_ce1 mem_ce 1 1 }  { inp_2_q1 mem_dout 0 32 } } }
	inp_3 { ap_memory {  { inp_3_address0 mem_address 1 7 }  { inp_3_ce0 mem_ce 1 1 }  { inp_3_q0 mem_dout 0 32 }  { inp_3_address1 mem_address 1 7 }  { inp_3_ce1 mem_ce 1 1 }  { inp_3_q1 mem_dout 0 32 } } }
	inp_4 { ap_memory {  { inp_4_address0 mem_address 1 7 }  { inp_4_ce0 mem_ce 1 1 }  { inp_4_q0 mem_dout 0 32 }  { inp_4_address1 mem_address 1 7 }  { inp_4_ce1 mem_ce 1 1 }  { inp_4_q1 mem_dout 0 32 } } }
	inp_5 { ap_memory {  { inp_5_address0 mem_address 1 7 }  { inp_5_ce0 mem_ce 1 1 }  { inp_5_q0 mem_dout 0 32 }  { inp_5_address1 mem_address 1 7 }  { inp_5_ce1 mem_ce 1 1 }  { inp_5_q1 mem_dout 0 32 } } }
	inp_6 { ap_memory {  { inp_6_address0 mem_address 1 7 }  { inp_6_ce0 mem_ce 1 1 }  { inp_6_q0 mem_dout 0 32 }  { inp_6_address1 mem_address 1 7 }  { inp_6_ce1 mem_ce 1 1 }  { inp_6_q1 mem_dout 0 32 } } }
	inp_7 { ap_memory {  { inp_7_address0 mem_address 1 7 }  { inp_7_ce0 mem_ce 1 1 }  { inp_7_q0 mem_dout 0 32 }  { inp_7_address1 mem_address 1 7 }  { inp_7_ce1 mem_ce 1 1 }  { inp_7_q1 mem_dout 0 32 } } }
	inp_8 { ap_memory {  { inp_8_address0 mem_address 1 7 }  { inp_8_ce0 mem_ce 1 1 }  { inp_8_q0 mem_dout 0 32 }  { inp_8_address1 mem_address 1 7 }  { inp_8_ce1 mem_ce 1 1 }  { inp_8_q1 mem_dout 0 32 } } }
	inp_9 { ap_memory {  { inp_9_address0 mem_address 1 7 }  { inp_9_ce0 mem_ce 1 1 }  { inp_9_q0 mem_dout 0 32 }  { inp_9_address1 mem_address 1 7 }  { inp_9_ce1 mem_ce 1 1 }  { inp_9_q1 mem_dout 0 32 } } }
	inp_10 { ap_memory {  { inp_10_address0 mem_address 1 7 }  { inp_10_ce0 mem_ce 1 1 }  { inp_10_q0 mem_dout 0 32 }  { inp_10_address1 mem_address 1 7 }  { inp_10_ce1 mem_ce 1 1 }  { inp_10_q1 mem_dout 0 32 } } }
	inp_11 { ap_memory {  { inp_11_address0 mem_address 1 7 }  { inp_11_ce0 mem_ce 1 1 }  { inp_11_q0 mem_dout 0 32 }  { inp_11_address1 mem_address 1 7 }  { inp_11_ce1 mem_ce 1 1 }  { inp_11_q1 mem_dout 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 10 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 }  { out_r_address1 mem_address 1 10 }  { out_r_ce1 mem_ce 1 1 }  { out_r_we1 mem_we 1 1 }  { out_r_d1 mem_din 1 32 } } }
}
