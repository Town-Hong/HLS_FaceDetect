set C_TypeInfoList {{ 
"ImgProcess_Top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[], {"reference": "0"}] }, {"output": [[], {"reference": "0"}] }, {"nor_output": [[], {"reference": "0"}] }, {"rows": [[], {"scalar": "int"}] }, {"cols": [[], {"scalar": "int"}] }, {"threshold": [[], {"reference":  {"scalar": "double"}}] }],[],""], 
"0": [ "AXI_STREAM", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<ap_axiu<32, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<32, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]},{ "id": [[], "6"]},{ "dest": [[], "6"]}],""]}], 
"4": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName ImgProcess_Top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ImgProcess_Top}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_STREAM_V_data_V int 32 regular {axi_s 0 volatile  { input_r Data } }  }
	{ INPUT_STREAM_V_keep_V int 4 regular {axi_s 0 volatile  { input_r Keep } }  }
	{ INPUT_STREAM_V_strb_V int 4 regular {axi_s 0 volatile  { input_r Strb } }  }
	{ INPUT_STREAM_V_user_V int 1 regular {axi_s 0 volatile  { input_r User } }  }
	{ INPUT_STREAM_V_last_V int 1 regular {axi_s 0 volatile  { input_r Last } }  }
	{ INPUT_STREAM_V_id_V int 1 regular {axi_s 0 volatile  { input_r ID } }  }
	{ INPUT_STREAM_V_dest_V int 1 regular {axi_s 0 volatile  { input_r Dest } }  }
	{ OUTPUT_STREAM_V_data_V int 32 regular {axi_s 1 volatile  { output_r Data } }  }
	{ OUTPUT_STREAM_V_keep_V int 4 regular {axi_s 1 volatile  { output_r Keep } }  }
	{ OUTPUT_STREAM_V_strb_V int 4 regular {axi_s 1 volatile  { output_r Strb } }  }
	{ OUTPUT_STREAM_V_user_V int 1 regular {axi_s 1 volatile  { output_r User } }  }
	{ OUTPUT_STREAM_V_last_V int 1 regular {axi_s 1 volatile  { output_r Last } }  }
	{ OUTPUT_STREAM_V_id_V int 1 regular {axi_s 1 volatile  { output_r ID } }  }
	{ OUTPUT_STREAM_V_dest_V int 1 regular {axi_s 1 volatile  { output_r Dest } }  }
	{ NOR_OUTPUT_STREAM_V_data_V int 32 regular {axi_s 1 volatile  { nor_output Data } }  }
	{ NOR_OUTPUT_STREAM_V_keep_V int 4 regular {axi_s 1 volatile  { nor_output Keep } }  }
	{ NOR_OUTPUT_STREAM_V_strb_V int 4 regular {axi_s 1 volatile  { nor_output Strb } }  }
	{ NOR_OUTPUT_STREAM_V_user_V int 1 regular {axi_s 1 volatile  { nor_output User } }  }
	{ NOR_OUTPUT_STREAM_V_last_V int 1 regular {axi_s 1 volatile  { nor_output Last } }  }
	{ NOR_OUTPUT_STREAM_V_id_V int 1 regular {axi_s 1 volatile  { nor_output ID } }  }
	{ NOR_OUTPUT_STREAM_V_dest_V int 1 regular {axi_s 1 volatile  { nor_output Dest } }  }
	{ rows int 32 regular {ap_stable 0} }
	{ cols int 32 regular {ap_stable 0} }
	{ threshold double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nor_output.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "nor_output.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "nor_output.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "nor_output.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "nor_output.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "nor_output.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "NOR_OUTPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "nor_output.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "threshold","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ input_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_r_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_r_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_r_TUSER sc_in sc_lv 1 signal 3 } 
	{ input_r_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_r_TID sc_in sc_lv 1 signal 5 } 
	{ input_r_TDEST sc_in sc_lv 1 signal 6 } 
	{ output_r_TDATA sc_out sc_lv 32 signal 7 } 
	{ output_r_TKEEP sc_out sc_lv 4 signal 8 } 
	{ output_r_TSTRB sc_out sc_lv 4 signal 9 } 
	{ output_r_TUSER sc_out sc_lv 1 signal 10 } 
	{ output_r_TLAST sc_out sc_lv 1 signal 11 } 
	{ output_r_TID sc_out sc_lv 1 signal 12 } 
	{ output_r_TDEST sc_out sc_lv 1 signal 13 } 
	{ nor_output_TDATA sc_out sc_lv 32 signal 14 } 
	{ nor_output_TKEEP sc_out sc_lv 4 signal 15 } 
	{ nor_output_TSTRB sc_out sc_lv 4 signal 16 } 
	{ nor_output_TUSER sc_out sc_lv 1 signal 17 } 
	{ nor_output_TLAST sc_out sc_lv 1 signal 18 } 
	{ nor_output_TID sc_out sc_lv 1 signal 19 } 
	{ nor_output_TDEST sc_out sc_lv 1 signal 20 } 
	{ rows sc_in sc_lv 32 signal 21 } 
	{ cols sc_in sc_lv 32 signal 22 } 
	{ threshold sc_out sc_lv 64 signal 23 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_r_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_r_TREADY sc_out sc_logic 1 inacc 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ threshold_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 13 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 13 } 
	{ nor_output_TVALID sc_out sc_logic 1 outvld 20 } 
	{ nor_output_TREADY sc_in sc_logic 1 outacc 20 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "input_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "input_r_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "input_r_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "input_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "input_r_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "input_r_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "output_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "output_r_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "output_r_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "output_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "output_r_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "output_r_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "nor_output_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "nor_output_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "nor_output_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "nor_output_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "nor_output_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "nor_output_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "nor_output_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "NOR_OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "threshold", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "input_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "threshold_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "threshold", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "nor_output_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "NOR_OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "nor_output_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "NOR_OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "113", "114", "115", "116", "117", "118", "119"],
		"CDFG" : "ImgProcess_Top",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "AXIvideo2Mat_U0"}],
		"OutputProcess" : [
			{"ID" : "113", "Name" : "Mat2AXIvideo_1_U0"},
			{"ID" : "114", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "INPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_data_V"}]},
			{"Name" : "INPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_keep_V"}]},
			{"Name" : "INPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_strb_V"}]},
			{"Name" : "INPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_user_V"}]},
			{"Name" : "INPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_last_V"}]},
			{"Name" : "INPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_id_V"}]},
			{"Name" : "INPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "input_V_dest_V"}]},
			{"Name" : "OUTPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_data_V"}]},
			{"Name" : "OUTPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_keep_V"}]},
			{"Name" : "OUTPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_strb_V"}]},
			{"Name" : "OUTPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_user_V"}]},
			{"Name" : "OUTPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_last_V"}]},
			{"Name" : "OUTPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_id_V"}]},
			{"Name" : "OUTPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "Mat2AXIvideo_1_U0", "Port" : "output_V_dest_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_data_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_keep_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_strb_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_user_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_last_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_id_V"}]},
			{"Name" : "NOR_OUTPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "nor_output_V_dest_V"}]},
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "YCrCb_GUASSIAN_U0", "Port" : "threshold"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "src_mat_data_stream_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0", "Parent" : "0", "Child" : ["3", "4", "10", "11", "28", "29", "32", "40", "41", "58", "59", "62", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112"],
		"CDFG" : "YCrCb_GUASSIAN",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "4", "Name" : "CvtColor_U0"}],
		"OutputProcess" : [
			{"ID" : "62", "Name" : "erode_dilate_U0"},
			{"ID" : "40", "Name" : "Duplicate_U0"},
			{"ID" : "58", "Name" : "YCrCb_GUASSIAN_Block_U0"}],
		"Port" : [
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "115",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "CvtColor_U0", "Port" : "src_mat_data_stream_s"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "116",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "CvtColor_U0", "Port" : "src_mat_data_stream_1"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "117",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "CvtColor_U0", "Port" : "src_mat_data_stream_2"}]},
			{"Name" : "res_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "118",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "erode_dilate_U0", "Port" : "res_data_stream_V"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "119",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "Duplicate_U0", "Port" : "dst1_data_stream_V"}]},
			{"Name" : "threshold", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "YCrCb_GUASSIAN_Block_U0", "Port" : "threshold"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Block_2_U0", "Parent" : "2",
		"CDFG" : "YCrCb_GUASSIAN_Block_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "nor_copy1_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "nor_copy1_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_copy1_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "nor_copy1_cols_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "Sim_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "Sim_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.CvtColor_U0", "Parent" : "2", "Child" : ["5", "6", "7", "8", "9"],
		"CDFG" : "CvtColor",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "src_mat_data_stream_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_1_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_1_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_2_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_2_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.CvtColor_U0.ImgProcess_Top_mubkb_U17", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.CvtColor_U0.ImgProcess_Top_macud_U18", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.CvtColor_U0.ImgProcess_Top_madEe_U19", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.CvtColor_U0.ImgProcess_Top_maeOg_U20", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.CvtColor_U0.ImgProcess_Top_maeOg_U21", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Split_U0", "Parent" : "2",
		"CDFG" : "Split",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "4",
		"StartFifo" : "start_for_Split_U0_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst0_data_stream_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0", "Parent" : "2", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "YCrCb_GUASSIAN_Loop_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "10",
		"StartFifo" : "start_for_YCrCb_GBew_U",
		"Port" : [
			{"Name" : "Cr_Img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "Cr_Img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Cb_Img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "Cb_Img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "Sim_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_fpfYi_U40", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U41", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U42", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U43", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U44", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U45", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U46", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U47", "Parent" : "11"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U48", "Parent" : "11"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U49", "Parent" : "11"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U50", "Parent" : "11"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U51", "Parent" : "11"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U52", "Parent" : "11"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_uiibs_U53", "Parent" : "11"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_uiibs_U54", "Parent" : "11"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dejbC_U55", "Parent" : "11"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Duplicate349_U0", "Parent" : "2",
		"CDFG" : "Duplicate349",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "11",
		"StartFifo" : "start_for_DuplicaCeG_U",
		"Port" : [
			{"Name" : "src_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "src_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "src_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.MinMaxLoc_U0", "Parent" : "2", "Child" : ["30", "31"],
		"CDFG" : "MinMaxLoc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "28",
		"StartFifo" : "start_for_MinMaxLDeQ_U",
		"Port" : [
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_val_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "min_val_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_val_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "max_val_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.MinMaxLoc_U0.ImgProcess_Top_fpkbM_U69", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.MinMaxLoc_U0.ImgProcess_Top_fpkbM_U70", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0", "Parent" : "2", "Child" : ["33"],
		"CDFG" : "normalized",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "28",
		"StartFifo" : "start_for_normaliEe0_U",
		"InputProcess" : [
			{"ID" : "33", "Name" : "normalized_Loop_loop_U0"}],
		"OutputProcess" : [
			{"ID" : "33", "Name" : "normalized_Loop_loop_U0"}],
		"Port" : [
			{"Name" : "sim_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "94",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "sim_data_stream_V"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "97",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "nor_data_stream_V"}]},
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "98",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "gray_data_stream_V"}]},
			{"Name" : "max", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "96",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "max"}]},
			{"Name" : "min", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "95",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "min"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0", "Parent" : "32", "Child" : ["34", "35", "36", "37", "38", "39"],
		"CDFG" : "normalized_Loop_loop",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "max", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "max_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "min_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sim_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "sim_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "nor_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "gray_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_fpfYi_U75", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_fpkbM_U76", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_fpkbM_U77", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_dslbW_U78", "Parent" : "33"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_dmhbi_U79", "Parent" : "33"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_ddmb6_U80", "Parent" : "33"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Duplicate_U0", "Parent" : "2",
		"CDFG" : "Duplicate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "32",
		"StartFifo" : "start_for_DuplicaFfa_U",
		"Port" : [
			{"Name" : "src_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "src_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "src_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0", "Parent" : "2", "Child" : ["42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "otsu_threshold",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "32",
		"StartFifo" : "start_for_otsu_thGfk_U",
		"Port" : [
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "gray_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "ret_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "ret_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fancg_U98", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fsocq_U99", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fsocq_U100", "Parent" : "41"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fmpcA_U101", "Parent" : "41"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fmpcA_U102", "Parent" : "41"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fdqcK_U103", "Parent" : "41"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_sircU_U104", "Parent" : "41"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_sircU_U105", "Parent" : "41"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_fcsc4_U106", "Parent" : "41"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_ddmb6_U107", "Parent" : "41"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_sitde_U108", "Parent" : "41"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_muudo_U109", "Parent" : "41"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_muudo_U110", "Parent" : "41"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_muudo_U111", "Parent" : "41"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_muudo_U112", "Parent" : "41"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.otsu_threshold_U0.ImgProcess_Top_sdvdy_U113", "Parent" : "41"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Block_U0", "Parent" : "2",
		"CDFG" : "YCrCb_GUASSIAN_Block",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"StartSource" : "41",
		"StartFifo" : "start_for_YCrCb_GIfE_U",
		"Port" : [
			{"Name" : "tmp3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "tmp3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "threshold", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_U0", "Parent" : "2", "Child" : ["60", "61"],
		"CDFG" : "YCrCb_GUASSIAN_Loop_s",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "40",
		"StartFifo" : "start_for_YCrCb_GHfu_U",
		"Port" : [
			{"Name" : "nor_copy2_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "nor_copy2_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tmp3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "tmp3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "origin_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "origin_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_U0.ImgProcess_Top_fpkbM_U128", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_GUASSIAN_Loop_U0.ImgProcess_Top_dcwdI_U129", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0", "Parent" : "2", "Child" : ["63", "72", "81", "82"],
		"CDFG" : "erode_dilate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "59",
		"StartFifo" : "start_for_erode_dJfO_U",
		"InputProcess" : [
			{"ID" : "63", "Name" : "Erode_U0"}],
		"OutputProcess" : [
			{"ID" : "72", "Name" : "Dilate_U0"}],
		"Port" : [
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "102",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "Erode_U0", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "res_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "118",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "Dilate_U0", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0", "Parent" : "62", "Child" : ["64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "Erode",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.k_buf_0_val_3_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.k_buf_0_val_4_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.k_buf_0_val_5_U", "Parent" : "63"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U134", "Parent" : "63"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U135", "Parent" : "63"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U136", "Parent" : "63"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U137", "Parent" : "63"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U138", "Parent" : "63"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0", "Parent" : "62", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "Dilate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "63",
		"StartFifo" : "start_for_Dilate_U0_U",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.k_buf_0_val_3_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.k_buf_0_val_4_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.k_buf_0_val_5_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U143", "Parent" : "72"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U144", "Parent" : "72"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U145", "Parent" : "72"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U146", "Parent" : "72"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U147", "Parent" : "72"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.tmp_img_data_stream_s_U", "Parent" : "62"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.erode_dilate_U0.start_for_Dilate_U0_U", "Parent" : "62"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.nor_copy1_rows_V_c_i_U", "Parent" : "2"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.nor_copy1_cols_V_c_i_U", "Parent" : "2"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Sim_rows_V_c_i_U", "Parent" : "2"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Sim_cols_V_c_i_U", "Parent" : "2"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_IMG_data_strea_U", "Parent" : "2"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_IMG_data_strea_1_U", "Parent" : "2"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.YCrCb_IMG_data_strea_2_U", "Parent" : "2"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Cr_Img_data_stream_0_U", "Parent" : "2"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Cb_Img_data_stream_0_U", "Parent" : "2"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Sim_data_stream_0_V_U", "Parent" : "2"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Sim_copy1_data_strea_U", "Parent" : "2"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.Sim_copy2_data_strea_U", "Parent" : "2"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.min_c_i_U", "Parent" : "2"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.max_c_i_U", "Parent" : "2"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.nor_copy1_data_strea_U", "Parent" : "2"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.gray_data_stream_0_s_U", "Parent" : "2"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.nor_copy2_data_strea_U", "Parent" : "2"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.tmp3_c_i_U", "Parent" : "2"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.tmp3_c5_i_U", "Parent" : "2"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.origin_data_stream_0_U", "Parent" : "2"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_Split_U0_U", "Parent" : "2"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_YCrCb_GBew_U", "Parent" : "2"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_DuplicaCeG_U", "Parent" : "2"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_MinMaxLDeQ_U", "Parent" : "2"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_normaliEe0_U", "Parent" : "2"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_DuplicaFfa_U", "Parent" : "2"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_otsu_thGfk_U", "Parent" : "2"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_YCrCb_GHfu_U", "Parent" : "2"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_YCrCb_GIfE_U", "Parent" : "2"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_U0.start_for_erode_dJfO_U", "Parent" : "2"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_1_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "dst_mat_data_stream_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "dst_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "nor_mat_data_stream_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "nor_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nor_output_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "nor_output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "nor_output_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "nor_output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "nor_output_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "nor_output_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_mat_data_stream_s_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_mat_data_stream_1_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_mat_data_stream_2_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_mat_data_stream_s_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nor_mat_data_stream_s_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ImgProcess_Top {
		INPUT_STREAM_V_data_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_keep_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_strb_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_user_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_last_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_id_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_dest_V {Type I LastRead 7 FirstWrite -1}
		OUTPUT_STREAM_V_data_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_keep_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_strb_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_user_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_last_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_id_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_dest_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_data_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_keep_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_strb_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_user_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_last_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_id_V {Type O LastRead -1 FirstWrite 3}
		NOR_OUTPUT_STREAM_V_dest_V {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 1 FirstWrite -1}
		cols {Type I LastRead 1 FirstWrite -1}
		threshold {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2Mat {
		input_V_data_V {Type I LastRead 7 FirstWrite -1}
		input_V_keep_V {Type I LastRead 7 FirstWrite -1}
		input_V_strb_V {Type I LastRead 7 FirstWrite -1}
		input_V_user_V {Type I LastRead 7 FirstWrite -1}
		input_V_last_V {Type I LastRead 7 FirstWrite -1}
		input_V_id_V {Type I LastRead 7 FirstWrite -1}
		input_V_dest_V {Type I LastRead 7 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		src_mat_data_stream_s {Type O LastRead -1 FirstWrite 5}
		src_mat_data_stream_1 {Type O LastRead -1 FirstWrite 5}
		src_mat_data_stream_2 {Type O LastRead -1 FirstWrite 5}}
	YCrCb_GUASSIAN {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		res_data_stream_V {Type O LastRead -1 FirstWrite 8}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 3}
		threshold {Type O LastRead -1 FirstWrite 0}}
	YCrCb_GUASSIAN_Block_2 {
		nor_copy1_rows_V_out {Type O LastRead -1 FirstWrite 0}
		nor_copy1_cols_V_out {Type O LastRead -1 FirstWrite 0}
		Sim_rows_V_out {Type O LastRead -1 FirstWrite 0}
		Sim_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	CvtColor {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		src_mat_data_stream_s {Type I LastRead 3 FirstWrite -1}
		src_mat_data_stream_1 {Type I LastRead 3 FirstWrite -1}
		src_mat_data_stream_2 {Type I LastRead 3 FirstWrite -1}
		YCrCb_IMG_data_strea_i {Type O LastRead -1 FirstWrite 8}
		YCrCb_IMG_data_strea_1_i {Type O LastRead -1 FirstWrite 8}
		YCrCb_IMG_data_strea_2_i {Type O LastRead -1 FirstWrite 8}}
	Split {
		src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		dst0_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	YCrCb_GUASSIAN_Loop_1 {
		Cr_Img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		Cb_Img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		Sim_data_stream_0_V {Type O LastRead -1 FirstWrite 61}}
	Duplicate349 {
		src_rows_V {Type I LastRead 0 FirstWrite -1}
		src_cols_V {Type I LastRead 0 FirstWrite -1}
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	MinMaxLoc {
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		min_val_out {Type O LastRead -1 FirstWrite 2}
		max_val_out {Type O LastRead -1 FirstWrite 2}}
	normalized {
		sim_data_stream_V {Type I LastRead 7 FirstWrite -1}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 53}
		gray_data_stream_V {Type O LastRead -1 FirstWrite 53}
		max {Type I LastRead 0 FirstWrite -1}
		min {Type I LastRead 0 FirstWrite -1}}
	normalized_Loop_loop {
		max {Type I LastRead 0 FirstWrite -1}
		min {Type I LastRead 0 FirstWrite -1}
		sim_data_stream_V {Type I LastRead 7 FirstWrite -1}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 53}
		gray_data_stream_V {Type O LastRead -1 FirstWrite 53}}
	Duplicate {
		src_rows_V {Type I LastRead 0 FirstWrite -1}
		src_cols_V {Type I LastRead 0 FirstWrite -1}
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	otsu_threshold {
		gray_data_stream_V {Type I LastRead 3 FirstWrite -1}
		ret_out {Type O LastRead -1 FirstWrite 58}
		ret_out1 {Type O LastRead -1 FirstWrite 58}}
	YCrCb_GUASSIAN_Block {
		tmp3 {Type I LastRead 0 FirstWrite -1}
		threshold {Type O LastRead -1 FirstWrite 0}}
	YCrCb_GUASSIAN_Loop_s {
		nor_copy2_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		tmp3 {Type I LastRead 0 FirstWrite -1}
		origin_data_stream_0_V {Type O LastRead -1 FirstWrite 4}}
	erode_dilate {
		img_data_stream_V {Type I LastRead 4 FirstWrite -1}
		res_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Erode {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Dilate {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Mat2AXIvideo_1 {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		dst_mat_data_stream_s {Type I LastRead 3 FirstWrite -1}
		output_V_data_V {Type O LastRead -1 FirstWrite 3}
		output_V_keep_V {Type O LastRead -1 FirstWrite 3}
		output_V_strb_V {Type O LastRead -1 FirstWrite 3}
		output_V_user_V {Type O LastRead -1 FirstWrite 3}
		output_V_last_V {Type O LastRead -1 FirstWrite 3}
		output_V_id_V {Type O LastRead -1 FirstWrite 3}
		output_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	Mat2AXIvideo {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		nor_mat_data_stream_s {Type I LastRead 3 FirstWrite -1}
		nor_output_V_data_V {Type O LastRead -1 FirstWrite 3}
		nor_output_V_keep_V {Type O LastRead -1 FirstWrite 3}
		nor_output_V_strb_V {Type O LastRead -1 FirstWrite 3}
		nor_output_V_user_V {Type O LastRead -1 FirstWrite 3}
		nor_output_V_last_V {Type O LastRead -1 FirstWrite 3}
		nor_output_V_id_V {Type O LastRead -1 FirstWrite 3}
		nor_output_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "364914", "Max" : "494709"}
	, {"Name" : "Interval", "Min" : "364797", "Max" : "494592"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	INPUT_STREAM_V_data_V { axis {  { input_r_TDATA in_data 0 32 } } }
	INPUT_STREAM_V_keep_V { axis {  { input_r_TKEEP in_data 0 4 } } }
	INPUT_STREAM_V_strb_V { axis {  { input_r_TSTRB in_data 0 4 } } }
	INPUT_STREAM_V_user_V { axis {  { input_r_TUSER in_data 0 1 } } }
	INPUT_STREAM_V_last_V { axis {  { input_r_TLAST in_data 0 1 } } }
	INPUT_STREAM_V_id_V { axis {  { input_r_TID in_data 0 1 } } }
	INPUT_STREAM_V_dest_V { axis {  { input_r_TDEST in_data 0 1 }  { input_r_TVALID in_vld 0 1 }  { input_r_TREADY in_acc 1 1 } } }
	OUTPUT_STREAM_V_data_V { axis {  { output_r_TDATA out_data 1 32 } } }
	OUTPUT_STREAM_V_keep_V { axis {  { output_r_TKEEP out_data 1 4 } } }
	OUTPUT_STREAM_V_strb_V { axis {  { output_r_TSTRB out_data 1 4 } } }
	OUTPUT_STREAM_V_user_V { axis {  { output_r_TUSER out_data 1 1 } } }
	OUTPUT_STREAM_V_last_V { axis {  { output_r_TLAST out_data 1 1 } } }
	OUTPUT_STREAM_V_id_V { axis {  { output_r_TID out_data 1 1 } } }
	OUTPUT_STREAM_V_dest_V { axis {  { output_r_TDEST out_data 1 1 }  { output_r_TVALID out_vld 1 1 }  { output_r_TREADY out_acc 0 1 } } }
	NOR_OUTPUT_STREAM_V_data_V { axis {  { nor_output_TDATA out_data 1 32 } } }
	NOR_OUTPUT_STREAM_V_keep_V { axis {  { nor_output_TKEEP out_data 1 4 } } }
	NOR_OUTPUT_STREAM_V_strb_V { axis {  { nor_output_TSTRB out_data 1 4 } } }
	NOR_OUTPUT_STREAM_V_user_V { axis {  { nor_output_TUSER out_data 1 1 } } }
	NOR_OUTPUT_STREAM_V_last_V { axis {  { nor_output_TLAST out_data 1 1 } } }
	NOR_OUTPUT_STREAM_V_id_V { axis {  { nor_output_TID out_data 1 1 } } }
	NOR_OUTPUT_STREAM_V_dest_V { axis {  { nor_output_TDEST out_data 1 1 }  { nor_output_TVALID out_vld 1 1 }  { nor_output_TREADY out_acc 0 1 } } }
	rows { ap_stable {  { rows in_data 0 32 } } }
	cols { ap_stable {  { cols in_data 0 32 } } }
	threshold { ap_vld {  { threshold out_data 1 64 }  { threshold_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
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
