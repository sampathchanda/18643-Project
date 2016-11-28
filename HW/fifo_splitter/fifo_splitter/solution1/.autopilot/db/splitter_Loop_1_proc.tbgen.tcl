set moduleName splitter_Loop_1_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {splitter_Loop_1_proc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ input_V int 8 regular {fifo 0 volatile }  }
	{ output_0_V int 8 regular {fifo 1 volatile }  }
	{ output_1_V int 8 regular {fifo 1 volatile }  }
	{ output_2_V int 8 regular {fifo 1 volatile }  }
	{ output_3_V int 8 regular {fifo 1 volatile }  }
	{ output_4_V int 8 regular {fifo 1 volatile }  }
	{ output_5_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "READONLY" } , 
 	{ "Name" : "output_0_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "output_1_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "output_2_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "output_3_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "output_4_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "output_5_V", "interface" : "fifo", "bitwidth" : 8 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V_dout sc_in sc_lv 8 signal 0 } 
	{ input_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_V_read sc_out sc_logic 1 signal 0 } 
	{ output_0_V_din sc_out sc_lv 8 signal 1 } 
	{ output_0_V_full_n sc_in sc_logic 1 signal 1 } 
	{ output_0_V_write sc_out sc_logic 1 signal 1 } 
	{ output_1_V_din sc_out sc_lv 8 signal 2 } 
	{ output_1_V_full_n sc_in sc_logic 1 signal 2 } 
	{ output_1_V_write sc_out sc_logic 1 signal 2 } 
	{ output_2_V_din sc_out sc_lv 8 signal 3 } 
	{ output_2_V_full_n sc_in sc_logic 1 signal 3 } 
	{ output_2_V_write sc_out sc_logic 1 signal 3 } 
	{ output_3_V_din sc_out sc_lv 8 signal 4 } 
	{ output_3_V_full_n sc_in sc_logic 1 signal 4 } 
	{ output_3_V_write sc_out sc_logic 1 signal 4 } 
	{ output_4_V_din sc_out sc_lv 8 signal 5 } 
	{ output_4_V_full_n sc_in sc_logic 1 signal 5 } 
	{ output_4_V_write sc_out sc_logic 1 signal 5 } 
	{ output_5_V_din sc_out sc_lv 8 signal 6 } 
	{ output_5_V_full_n sc_in sc_logic 1 signal 6 } 
	{ output_5_V_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "dout" }} , 
 	{ "name": "input_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "empty_n" }} , 
 	{ "name": "input_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "read" }} , 
 	{ "name": "output_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0_V", "role": "din" }} , 
 	{ "name": "output_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_V", "role": "full_n" }} , 
 	{ "name": "output_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_V", "role": "write" }} , 
 	{ "name": "output_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1_V", "role": "din" }} , 
 	{ "name": "output_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1_V", "role": "full_n" }} , 
 	{ "name": "output_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1_V", "role": "write" }} , 
 	{ "name": "output_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_2_V", "role": "din" }} , 
 	{ "name": "output_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2_V", "role": "full_n" }} , 
 	{ "name": "output_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2_V", "role": "write" }} , 
 	{ "name": "output_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_3_V", "role": "din" }} , 
 	{ "name": "output_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3_V", "role": "full_n" }} , 
 	{ "name": "output_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3_V", "role": "write" }} , 
 	{ "name": "output_4_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_4_V", "role": "din" }} , 
 	{ "name": "output_4_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4_V", "role": "full_n" }} , 
 	{ "name": "output_4_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4_V", "role": "write" }} , 
 	{ "name": "output_5_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_5_V", "role": "din" }} , 
 	{ "name": "output_5_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5_V", "role": "full_n" }} , 
 	{ "name": "output_5_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	input_V { ap_fifo {  { input_V_dout fifo_data 0 8 }  { input_V_empty_n fifo_status 0 1 }  { input_V_read fifo_update 1 1 } } }
	output_0_V { ap_fifo {  { output_0_V_din fifo_data 1 8 }  { output_0_V_full_n fifo_status 0 1 }  { output_0_V_write fifo_update 1 1 } } }
	output_1_V { ap_fifo {  { output_1_V_din fifo_data 1 8 }  { output_1_V_full_n fifo_status 0 1 }  { output_1_V_write fifo_update 1 1 } } }
	output_2_V { ap_fifo {  { output_2_V_din fifo_data 1 8 }  { output_2_V_full_n fifo_status 0 1 }  { output_2_V_write fifo_update 1 1 } } }
	output_3_V { ap_fifo {  { output_3_V_din fifo_data 1 8 }  { output_3_V_full_n fifo_status 0 1 }  { output_3_V_write fifo_update 1 1 } } }
	output_4_V { ap_fifo {  { output_4_V_din fifo_data 1 8 }  { output_4_V_full_n fifo_status 0 1 }  { output_4_V_write fifo_update 1 1 } } }
	output_5_V { ap_fifo {  { output_5_V_din fifo_data 1 8 }  { output_5_V_full_n fifo_status 0 1 }  { output_5_V_write fifo_update 1 1 } } }
}
