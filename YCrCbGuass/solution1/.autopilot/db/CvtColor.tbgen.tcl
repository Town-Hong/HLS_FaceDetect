set moduleName CvtColor
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {CvtColor}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular {ap_stable 0} }
	{ cols int 32 regular {ap_stable 0} }
	{ src_mat_data_stream_s int 8 regular {fifo 0 volatile }  }
	{ src_mat_data_stream_1 int 8 regular {fifo 0 volatile }  }
	{ src_mat_data_stream_2 int 8 regular {fifo 0 volatile }  }
	{ YCrCb_IMG_data_strea_i int 8 regular {fifo 1 volatile }  }
	{ YCrCb_IMG_data_strea_1_i int 8 regular {fifo 1 volatile }  }
	{ YCrCb_IMG_data_strea_2_i int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "src_mat_data_stream_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_mat_data_stream_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_mat_data_stream_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "YCrCb_IMG_data_strea_i", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "YCrCb_IMG_data_strea_1_i", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "YCrCb_IMG_data_strea_2_i", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ src_mat_data_stream_s_dout sc_in sc_lv 8 signal 2 } 
	{ src_mat_data_stream_s_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mat_data_stream_s_read sc_out sc_logic 1 signal 2 } 
	{ src_mat_data_stream_1_dout sc_in sc_lv 8 signal 3 } 
	{ src_mat_data_stream_1_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_mat_data_stream_1_read sc_out sc_logic 1 signal 3 } 
	{ src_mat_data_stream_2_dout sc_in sc_lv 8 signal 4 } 
	{ src_mat_data_stream_2_empty_n sc_in sc_logic 1 signal 4 } 
	{ src_mat_data_stream_2_read sc_out sc_logic 1 signal 4 } 
	{ YCrCb_IMG_data_strea_i_din sc_out sc_lv 8 signal 5 } 
	{ YCrCb_IMG_data_strea_i_full_n sc_in sc_logic 1 signal 5 } 
	{ YCrCb_IMG_data_strea_i_write sc_out sc_logic 1 signal 5 } 
	{ YCrCb_IMG_data_strea_1_i_din sc_out sc_lv 8 signal 6 } 
	{ YCrCb_IMG_data_strea_1_i_full_n sc_in sc_logic 1 signal 6 } 
	{ YCrCb_IMG_data_strea_1_i_write sc_out sc_logic 1 signal 6 } 
	{ YCrCb_IMG_data_strea_2_i_din sc_out sc_lv 8 signal 7 } 
	{ YCrCb_IMG_data_strea_2_i_full_n sc_in sc_logic 1 signal 7 } 
	{ YCrCb_IMG_data_strea_2_i_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "src_mat_data_stream_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_mat_data_stream_s", "role": "dout" }} , 
 	{ "name": "src_mat_data_stream_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_s", "role": "empty_n" }} , 
 	{ "name": "src_mat_data_stream_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_s", "role": "read" }} , 
 	{ "name": "src_mat_data_stream_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_mat_data_stream_1", "role": "dout" }} , 
 	{ "name": "src_mat_data_stream_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_1", "role": "empty_n" }} , 
 	{ "name": "src_mat_data_stream_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_1", "role": "read" }} , 
 	{ "name": "src_mat_data_stream_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_mat_data_stream_2", "role": "dout" }} , 
 	{ "name": "src_mat_data_stream_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_2", "role": "empty_n" }} , 
 	{ "name": "src_mat_data_stream_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_data_stream_2", "role": "read" }} , 
 	{ "name": "YCrCb_IMG_data_strea_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_i", "role": "din" }} , 
 	{ "name": "YCrCb_IMG_data_strea_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_i", "role": "full_n" }} , 
 	{ "name": "YCrCb_IMG_data_strea_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_i", "role": "write" }} , 
 	{ "name": "YCrCb_IMG_data_strea_1_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_1_i", "role": "din" }} , 
 	{ "name": "YCrCb_IMG_data_strea_1_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_1_i", "role": "full_n" }} , 
 	{ "name": "YCrCb_IMG_data_strea_1_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_1_i", "role": "write" }} , 
 	{ "name": "YCrCb_IMG_data_strea_2_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_2_i", "role": "din" }} , 
 	{ "name": "YCrCb_IMG_data_strea_2_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_2_i", "role": "full_n" }} , 
 	{ "name": "YCrCb_IMG_data_strea_2_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "YCrCb_IMG_data_strea_2_i", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
			{"Name" : "src_mat_data_stream_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_1_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_1_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_2_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_2_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_mubkb_U17", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_macud_U18", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_madEe_U19", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_maeOg_U20", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_maeOg_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CvtColor {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		src_mat_data_stream_s {Type I LastRead 3 FirstWrite -1}
		src_mat_data_stream_1 {Type I LastRead 3 FirstWrite -1}
		src_mat_data_stream_2 {Type I LastRead 3 FirstWrite -1}
		YCrCb_IMG_data_strea_i {Type O LastRead -1 FirstWrite 8}
		YCrCb_IMG_data_strea_1_i {Type O LastRead -1 FirstWrite 8}
		YCrCb_IMG_data_strea_2_i {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "351361"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "351361"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rows { ap_stable {  { rows in_data 0 32 } } }
	cols { ap_stable {  { cols in_data 0 32 } } }
	src_mat_data_stream_s { ap_fifo {  { src_mat_data_stream_s_dout fifo_data 0 8 }  { src_mat_data_stream_s_empty_n fifo_status 0 1 }  { src_mat_data_stream_s_read fifo_update 1 1 } } }
	src_mat_data_stream_1 { ap_fifo {  { src_mat_data_stream_1_dout fifo_data 0 8 }  { src_mat_data_stream_1_empty_n fifo_status 0 1 }  { src_mat_data_stream_1_read fifo_update 1 1 } } }
	src_mat_data_stream_2 { ap_fifo {  { src_mat_data_stream_2_dout fifo_data 0 8 }  { src_mat_data_stream_2_empty_n fifo_status 0 1 }  { src_mat_data_stream_2_read fifo_update 1 1 } } }
	YCrCb_IMG_data_strea_i { ap_fifo {  { YCrCb_IMG_data_strea_i_din fifo_data 1 8 }  { YCrCb_IMG_data_strea_i_full_n fifo_status 0 1 }  { YCrCb_IMG_data_strea_i_write fifo_update 1 1 } } }
	YCrCb_IMG_data_strea_1_i { ap_fifo {  { YCrCb_IMG_data_strea_1_i_din fifo_data 1 8 }  { YCrCb_IMG_data_strea_1_i_full_n fifo_status 0 1 }  { YCrCb_IMG_data_strea_1_i_write fifo_update 1 1 } } }
	YCrCb_IMG_data_strea_2_i { ap_fifo {  { YCrCb_IMG_data_strea_2_i_din fifo_data 1 8 }  { YCrCb_IMG_data_strea_2_i_full_n fifo_status 0 1 }  { YCrCb_IMG_data_strea_2_i_write fifo_update 1 1 } } }
}
