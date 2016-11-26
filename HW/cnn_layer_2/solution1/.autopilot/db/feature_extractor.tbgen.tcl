set C_TypeInfoList {{ 
"feature_extractor" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"A": [[], {"array": [ {"array": [ {"scalar": "int"}, [12]]}, [12]]}] }, {"W": [[], {"array": [ {"array": [ {"scalar": "float"}, [5,5]]}, [3]]}] }, {"feature": [[], {"array": [ {"array": [ {"scalar": "int"}, [4,4]]}, [3]]}] }],[],""]
}}
set moduleName feature_extractor
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {feature_extractor}
set C_modelType { void 0 }
set C_modelArgList { 
	{ A int 32 regular {array 144 { 1 3 } 1 1 }  }
	{ W float 32 regular {array 75 { 1 3 } 1 1 }  }
	{ feature int 32 regular {array 48 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 11,"step" : 1},{"low" : 0,"up" : 11,"step" : 1}]}]}]} , 
 	{ "Name" : "W", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "W","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "feature", "interface" : "memory", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "feature","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 8 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ W_address0 sc_out sc_lv 7 signal 1 } 
	{ W_ce0 sc_out sc_logic 1 signal 1 } 
	{ W_q0 sc_in sc_lv 32 signal 1 } 
	{ feature_address0 sc_out sc_lv 6 signal 2 } 
	{ feature_ce0 sc_out sc_logic 1 signal 2 } 
	{ feature_we0 sc_out sc_logic 1 signal 2 } 
	{ feature_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "W", "role": "address0" }} , 
 	{ "name": "W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ce0" }} , 
 	{ "name": "W_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "q0" }} , 
 	{ "name": "feature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "feature", "role": "address0" }} , 
 	{ "name": "feature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature", "role": "ce0" }} , 
 	{ "name": "feature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature", "role": "we0" }} , 
 	{ "name": "feature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feature", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 8 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 } } }
	W { ap_memory {  { W_address0 mem_address 1 7 }  { W_ce0 mem_ce 1 1 }  { W_q0 mem_dout 0 32 } } }
	feature { ap_memory {  { feature_address0 mem_address 1 6 }  { feature_ce0 mem_ce 1 1 }  { feature_we0 mem_we 1 1 }  { feature_d0 mem_din 1 32 } } }
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
