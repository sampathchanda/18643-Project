set moduleName maxpool_Loop_LOOP_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {maxpool_Loop_LOOP_proc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ output_V int 8 regular {axi_s 1 volatile  { output_V data } }  }
	{ input_V int 8 regular {axi_s 0 volatile  { input_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "input_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "READONLY" } ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_V_TDATA sc_out sc_lv 8 signal 0 } 
	{ output_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ output_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ input_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ input_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V", "role": "TDATA" }} , 
 	{ "name": "output_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_V", "role": "TVALID" }} , 
 	{ "name": "output_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_V", "role": "TREADY" }} , 
 	{ "name": "input_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "TDATA" }} , 
 	{ "name": "input_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_V", "role": "TVALID" }} , 
 	{ "name": "input_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_V", "role": "TREADY" }}  ]}
set Spec2ImplPortList { 
	output_V { axis {  { output_V_TDATA out_data 1 8 }  { output_V_TVALID out_vld 1 1 }  { output_V_TREADY out_acc 0 1 } } }
	input_V { axis {  { input_V_TDATA in_data 0 8 }  { input_V_TVALID in_vld 0 1 }  { input_V_TREADY in_acc 1 1 } } }
}
