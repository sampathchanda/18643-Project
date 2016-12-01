set C_TypeInfoList {{ 
"maxpool" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"begin": [[],{ "pointer":  {"scalar": "bool"}}] }, {"input": [[], {"reference": "0"}] }, {"output": [[], {"reference": "0"}] }, {"ok": [[],{ "pointer":  {"scalar": "bool"}}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"1"]}}],
"1": ["hls", ""]
}}
set moduleName maxpool
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {maxpool}
set C_modelType { void 0 }
set C_modelArgList { 
	{ begin_r int 1 unused {pointer 0}  }
	{ input_V int 8 regular {axi_s 0 volatile  { input_V data } }  }
	{ output_V int 8 regular {axi_s 1 volatile  { output_V data } }  }
	{ ok int 1 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "begin_r", "interface" : "wire", "bitwidth" : 1 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "begin","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V", "interface" : "axis", "bitwidth" : 8 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ok", "interface" : "wire", "bitwidth" : 1 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ok","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ begin_r sc_in sc_logic 1 signal 0 } 
	{ input_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ output_V_TDATA sc_out sc_lv 8 signal 2 } 
	{ ok sc_in sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ output_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ output_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ input_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "begin_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "begin_r", "role": "default" }} , 
 	{ "name": "input_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "TDATA" }} , 
 	{ "name": "output_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V", "role": "TDATA" }} , 
 	{ "name": "ok", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ok", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "output_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_V", "role": "TVALID" }} , 
 	{ "name": "output_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_V", "role": "TREADY" }} , 
 	{ "name": "input_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_V", "role": "TVALID" }} , 
 	{ "name": "input_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_V", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}
set Spec2ImplPortList { 
	begin_r { ap_none {  { begin_r in_data 0 1 } } }
	input_V { axis {  { input_V_TDATA in_data 0 8 }  { input_V_TVALID in_vld 0 1 }  { input_V_TREADY in_acc 1 1 } } }
	output_V { axis {  { output_V_TDATA out_data 1 8 }  { output_V_TVALID out_vld 1 1 }  { output_V_TREADY out_acc 0 1 } } }
	ok { ap_none {  { ok in_data 0 1 } } }
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
