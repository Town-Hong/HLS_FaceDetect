set moduleName AXIvideo2Mat
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {AXIvideo2Mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V_data_V int 32 regular {axi_s 0 volatile  { input_r Data } }  }
	{ input_V_keep_V int 4 regular {axi_s 0 volatile  { input_r Keep } }  }
	{ input_V_strb_V int 4 regular {axi_s 0 volatile  { input_r Strb } }  }
	{ input_V_user_V int 1 regular {axi_s 0 volatile  { input_r User } }  }
	{ input_V_last_V int 1 regular {axi_s 0 volatile  { input_r Last } }  }
	{ input_V_id_V int 1 regular {axi_s 0 volatile  { input_r ID } }  }
	{ input_V_dest_V int 1 regular {axi_s 0 volatile  { input_r Dest } }  }
	{ rows int 32 regular {ap_stable 0} }
	{ cols int 32 regular {ap_stable 0} }
	{ src_mat_data_stream_s int 8 regular {fifo 1 volatile }  }
	{ src_mat_data_stream_1 int 8 regular {fifo 1 volatile }  }
	{ src_mat_data_stream_2 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "src_mat_data_stream_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mat_data_stream_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mat_data_stream_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_r_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_r_TREADY sc_out sc_logic 1 inacc 6 } 
	{ input_r_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_r_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_r_TUSER sc_in sc_lv 1 signal 3 } 
	{ input_r_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_r_TID sc_in sc_lv 1 signal 5 } 
	{ input_r_TDEST sc_in sc_lv 1 signal 6 } 
	{ rows sc_in sc_lv 32 signal 7 } 
	{ cols sc_in sc_lv 32 signal 8 } 
	{ src_mat_data_stream_s_din sc_out sc_lv 8 signal 9 } 
	{ src_mat_data_stream_s_full_n sc_in sc_logic 1 signal 9 } 
	{ src_mat_data_stream_s_write sc_out sc_logic 1 signal 9 } 
	{ src_mat_data_stream_1_din sc_out sc_lv 8 signal 10 } 
	{ src_mat_data_stream_1_full_n sc_in sc_logic 1 signal 10 } 
	{ src_mat_data_stream_1_write sc_out sc_logic 1 signal 10 } 
	{ src_mat_data_stream_2_din sc_out sc_lv 8 signal 11 } 
	{ src_mat_data_stream_2_full_n sc_in sc_logic 1 signal 11 } 
	{ src_mat_data_stream_2_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "default" }} , 
 	{ "name": "input_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_V_dest_V", "role": "default" }} , 
 	{ "name": "input_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_V_dest_V", "role": "default" }} , 
 	{ "name": "input_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "default" }} , 
 	{ "name": "input_r_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "default" }} , 
 	{ "name": "input_r_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "default" }} , 
 	{ "name": "input_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "default" }} , 
 	{ "name": "input_r_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "default" }} , 
 	{ "name": "input_r_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "src_mat_data_stream_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_mat_data_stream_s", "role": "din" }} , 
 	{ "name": "src_mat_data_stream_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_s", "role": "full_n" }} , 
 	{ "name": "src_mat_data_stream_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_s", "role": "write" }} , 
 	{ "name": "src_mat_data_stream_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_mat_data_stream_1", "role": "din" }} , 
 	{ "name": "src_mat_data_stream_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_1", "role": "full_n" }} , 
 	{ "name": "src_mat_data_stream_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_1", "role": "write" }} , 
 	{ "name": "src_mat_data_stream_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_mat_data_stream_2", "role": "din" }} , 
 	{ "name": "src_mat_data_stream_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_2", "role": "full_n" }} , 
 	{ "name": "src_mat_data_stream_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "src_mat_data_stream_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_2_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		src_mat_data_stream_2 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "350643"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "350643"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	input_V_data_V { axis {  { input_r_TDATA in_data 0 32 } } }
	input_V_keep_V { axis {  { input_r_TKEEP in_data 0 4 } } }
	input_V_strb_V { axis {  { input_r_TSTRB in_data 0 4 } } }
	input_V_user_V { axis {  { input_r_TUSER in_data 0 1 } } }
	input_V_last_V { axis {  { input_r_TLAST in_data 0 1 } } }
	input_V_id_V { axis {  { input_r_TID in_data 0 1 } } }
	input_V_dest_V { axis {  { input_r_TVALID in_vld 0 1 }  { input_r_TREADY in_acc 1 1 }  { input_r_TDEST in_data 0 1 } } }
	rows { ap_stable {  { rows in_data 0 32 } } }
	cols { ap_stable {  { cols in_data 0 32 } } }
	src_mat_data_stream_s { ap_fifo {  { src_mat_data_stream_s_din fifo_data 1 8 }  { src_mat_data_stream_s_full_n fifo_status 0 1 }  { src_mat_data_stream_s_write fifo_update 1 1 } } }
	src_mat_data_stream_1 { ap_fifo {  { src_mat_data_stream_1_din fifo_data 1 8 }  { src_mat_data_stream_1_full_n fifo_status 0 1 }  { src_mat_data_stream_1_write fifo_update 1 1 } } }
	src_mat_data_stream_2 { ap_fifo {  { src_mat_data_stream_2_din fifo_data 1 8 }  { src_mat_data_stream_2_full_n fifo_status 0 1 }  { src_mat_data_stream_2_write fifo_update 1 1 } } }
}
