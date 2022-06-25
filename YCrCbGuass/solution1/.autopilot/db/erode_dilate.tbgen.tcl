set moduleName erode_dilate
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {erode_dilate}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ res_data_stream_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ img_data_stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ res_data_stream_V_din sc_out sc_lv 8 signal 1 } 
	{ res_data_stream_V_full_n sc_in sc_logic 1 signal 1 } 
	{ res_data_stream_V_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "img_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "read" }} , 
 	{ "name": "res_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_data_stream_V", "role": "din" }} , 
 	{ "name": "res_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_data_stream_V", "role": "full_n" }} , 
 	{ "name": "res_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_data_stream_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10", "19", "20"],
		"CDFG" : "erode_dilate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Erode_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "Dilate_U0"}],
		"Port" : [
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Erode_U0", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "res_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Dilate_U0", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Erode_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "Erode",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.k_buf_0_val_3_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.k_buf_0_val_4_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.k_buf_0_val_5_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.ImgProcess_Top_muxdS_U134", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.ImgProcess_Top_muxdS_U135", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.ImgProcess_Top_muxdS_U136", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.ImgProcess_Top_muxdS_U137", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Erode_U0.ImgProcess_Top_muxdS_U138", "Parent" : "1"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dilate_U0", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "Dilate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_Dilate_U0_U",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.k_buf_0_val_3_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.k_buf_0_val_4_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.k_buf_0_val_5_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.ImgProcess_Top_muxdS_U143", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.ImgProcess_Top_muxdS_U144", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.ImgProcess_Top_muxdS_U145", "Parent" : "10"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.ImgProcess_Top_muxdS_U146", "Parent" : "10"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Dilate_U0.ImgProcess_Top_muxdS_U147", "Parent" : "10"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_img_data_stream_s_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Dilate_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	erode_dilate {
		img_data_stream_V {Type I LastRead 4 FirstWrite -1}
		res_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Erode {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Dilate {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "353786", "Max" : "353786"}
	, {"Name" : "Interval", "Min" : "353782", "Max" : "353782"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_data_stream_V { ap_fifo {  { img_data_stream_V_dout fifo_data 0 8 }  { img_data_stream_V_empty_n fifo_status 0 1 }  { img_data_stream_V_read fifo_update 1 1 } } }
	res_data_stream_V { ap_fifo {  { res_data_stream_V_din fifo_data 1 8 }  { res_data_stream_V_full_n fifo_status 0 1 }  { res_data_stream_V_write fifo_update 1 1 } } }
}
