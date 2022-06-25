set moduleName Mat2AXIvideo
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Mat2AXIvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular {ap_stable 0} }
	{ cols int 32 regular {ap_stable 0} }
	{ nor_mat_data_stream_s float 32 regular {fifo 0 volatile }  }
	{ nor_output_V_data_V int 32 regular {axi_s 1 volatile  { nor_output Data } }  }
	{ nor_output_V_keep_V int 4 regular {axi_s 1 volatile  { nor_output Keep } }  }
	{ nor_output_V_strb_V int 4 regular {axi_s 1 volatile  { nor_output Strb } }  }
	{ nor_output_V_user_V int 1 regular {axi_s 1 volatile  { nor_output User } }  }
	{ nor_output_V_last_V int 1 regular {axi_s 1 volatile  { nor_output Last } }  }
	{ nor_output_V_id_V int 1 regular {axi_s 1 volatile  { nor_output ID } }  }
	{ nor_output_V_dest_V int 1 regular {axi_s 1 volatile  { nor_output Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nor_mat_data_stream_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nor_output_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_output_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_output_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_output_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_output_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_output_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_output_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ nor_mat_data_stream_s_dout sc_in sc_lv 32 signal 2 } 
	{ nor_mat_data_stream_s_empty_n sc_in sc_logic 1 signal 2 } 
	{ nor_mat_data_stream_s_read sc_out sc_logic 1 signal 2 } 
	{ nor_output_TDATA sc_out sc_lv 32 signal 3 } 
	{ nor_output_TVALID sc_out sc_logic 1 outvld 9 } 
	{ nor_output_TREADY sc_in sc_logic 1 outacc 9 } 
	{ nor_output_TKEEP sc_out sc_lv 4 signal 4 } 
	{ nor_output_TSTRB sc_out sc_lv 4 signal 5 } 
	{ nor_output_TUSER sc_out sc_lv 1 signal 6 } 
	{ nor_output_TLAST sc_out sc_lv 1 signal 7 } 
	{ nor_output_TID sc_out sc_lv 1 signal 8 } 
	{ nor_output_TDEST sc_out sc_lv 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "nor_mat_data_stream_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nor_mat_data_stream_s", "role": "dout" }} , 
 	{ "name": "nor_mat_data_stream_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_mat_data_stream_s", "role": "empty_n" }} , 
 	{ "name": "nor_mat_data_stream_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_mat_data_stream_s", "role": "read" }} , 
 	{ "name": "nor_output_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nor_output_V_data_V", "role": "default" }} , 
 	{ "name": "nor_output_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "nor_output_V_dest_V", "role": "default" }} , 
 	{ "name": "nor_output_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "nor_output_V_dest_V", "role": "default" }} , 
 	{ "name": "nor_output_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "nor_output_V_keep_V", "role": "default" }} , 
 	{ "name": "nor_output_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "nor_output_V_strb_V", "role": "default" }} , 
 	{ "name": "nor_output_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_output_V_user_V", "role": "default" }} , 
 	{ "name": "nor_output_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_output_V_last_V", "role": "default" }} , 
 	{ "name": "nor_output_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_output_V_id_V", "role": "default" }} , 
 	{ "name": "nor_output_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_output_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "nor_mat_data_stream_s", "Type" : "Fifo", "Direction" : "I",
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
			{"Name" : "nor_output_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
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

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "348481"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "348481"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rows { ap_stable {  { rows in_data 0 32 } } }
	cols { ap_stable {  { cols in_data 0 32 } } }
	nor_mat_data_stream_s { ap_fifo {  { nor_mat_data_stream_s_dout fifo_data 0 32 }  { nor_mat_data_stream_s_empty_n fifo_status 0 1 }  { nor_mat_data_stream_s_read fifo_update 1 1 } } }
	nor_output_V_data_V { axis {  { nor_output_TDATA out_data 1 32 } } }
	nor_output_V_keep_V { axis {  { nor_output_TKEEP out_data 1 4 } } }
	nor_output_V_strb_V { axis {  { nor_output_TSTRB out_data 1 4 } } }
	nor_output_V_user_V { axis {  { nor_output_TUSER out_data 1 1 } } }
	nor_output_V_last_V { axis {  { nor_output_TLAST out_data 1 1 } } }
	nor_output_V_id_V { axis {  { nor_output_TID out_data 1 1 } } }
	nor_output_V_dest_V { axis {  { nor_output_TVALID out_vld 1 1 }  { nor_output_TREADY out_acc 0 1 }  { nor_output_TDEST out_data 1 1 } } }
}
