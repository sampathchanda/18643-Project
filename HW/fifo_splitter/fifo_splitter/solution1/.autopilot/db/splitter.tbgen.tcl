set C_TypeInfoList {{ 
"splitter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[], {"reference": "0"}] }, {"output": [[], {"array": ["0", [6]]}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"1"]}}],
"1": ["hls", ""]
}}
set moduleName splitter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {splitter}
set C_modelType { void 0 }
set C_modelArgList { 
	{ input_V int 8 regular {axi_s 0 volatile  { input_V data } }  }
	{ output_0_V int 8 regular {axi_s 1 volatile  { output_0_V data } }  }
	{ output_1_V int 8 regular {axi_s 1 volatile  { output_1_V data } }  }
	{ output_2_V int 8 regular {axi_s 1 volatile  { output_2_V data } }  }
	{ output_3_V int 8 regular {axi_s 1 volatile  { output_3_V data } }  }
	{ output_4_V int 8 regular {axi_s 1 volatile  { output_4_V data } }  }
	{ output_5_V int 8 regular {axi_s 1 volatile  { output_5_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_0_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "output_1_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "output_2_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "output_3_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "output_4_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "output_5_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ input_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ output_0_V_TDATA sc_out sc_lv 8 signal 1 } 
	{ output_1_V_TDATA sc_out sc_lv 8 signal 2 } 
	{ output_2_V_TDATA sc_out sc_lv 8 signal 3 } 
	{ output_3_V_TDATA sc_out sc_lv 8 signal 4 } 
	{ output_4_V_TDATA sc_out sc_lv 8 signal 5 } 
	{ output_5_V_TDATA sc_out sc_lv 8 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ output_0_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ output_0_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ output_1_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ output_1_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ output_2_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ output_2_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ output_3_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ output_3_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ output_4_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ output_4_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ output_5_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ output_5_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "input_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "TDATA" }} , 
 	{ "name": "output_0_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0_V", "role": "TDATA" }} , 
 	{ "name": "output_1_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1_V", "role": "TDATA" }} , 
 	{ "name": "output_2_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_2_V", "role": "TDATA" }} , 
 	{ "name": "output_3_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_3_V", "role": "TDATA" }} , 
 	{ "name": "output_4_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_4_V", "role": "TDATA" }} , 
 	{ "name": "output_5_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_5_V", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_V", "role": "TVALID" }} , 
 	{ "name": "input_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_V", "role": "TREADY" }} , 
 	{ "name": "output_0_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0_V", "role": "TVALID" }} , 
 	{ "name": "output_0_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_0_V", "role": "TREADY" }} , 
 	{ "name": "output_1_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1_V", "role": "TVALID" }} , 
 	{ "name": "output_1_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_1_V", "role": "TREADY" }} , 
 	{ "name": "output_2_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2_V", "role": "TVALID" }} , 
 	{ "name": "output_2_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_2_V", "role": "TREADY" }} , 
 	{ "name": "output_3_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3_V", "role": "TVALID" }} , 
 	{ "name": "output_3_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_3_V", "role": "TREADY" }} , 
 	{ "name": "output_4_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4_V", "role": "TVALID" }} , 
 	{ "name": "output_4_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_4_V", "role": "TREADY" }} , 
 	{ "name": "output_5_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5_V", "role": "TVALID" }} , 
 	{ "name": "output_5_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_5_V", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}
set Spec2ImplPortList { 
	input_V { axis {  { input_V_TDATA in_data 0 8 }  { input_V_TVALID in_vld 0 1 }  { input_V_TREADY in_acc 1 1 } } }
	output_0_V { axis {  { output_0_V_TDATA out_data 1 8 }  { output_0_V_TVALID out_vld 1 1 }  { output_0_V_TREADY out_acc 0 1 } } }
	output_1_V { axis {  { output_1_V_TDATA out_data 1 8 }  { output_1_V_TVALID out_vld 1 1 }  { output_1_V_TREADY out_acc 0 1 } } }
	output_2_V { axis {  { output_2_V_TDATA out_data 1 8 }  { output_2_V_TVALID out_vld 1 1 }  { output_2_V_TREADY out_acc 0 1 } } }
	output_3_V { axis {  { output_3_V_TDATA out_data 1 8 }  { output_3_V_TVALID out_vld 1 1 }  { output_3_V_TREADY out_acc 0 1 } } }
	output_4_V { axis {  { output_4_V_TDATA out_data 1 8 }  { output_4_V_TVALID out_vld 1 1 }  { output_4_V_TREADY out_acc 0 1 } } }
	output_5_V { axis {  { output_5_V_TDATA out_data 1 8 }  { output_5_V_TVALID out_vld 1 1 }  { output_5_V_TREADY out_acc 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
