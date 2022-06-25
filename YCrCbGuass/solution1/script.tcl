############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project YCrCbGuass
set_top ImgProcess_Top
add_files imgprocess.cpp
add_files imgprocess.h
add_files top.cpp
add_files top.h
add_files -tb ../hlstest/ycy.png
add_files -tb tfboys.jpg
add_files -tb test1.jpg
add_files -tb test.cpp
add_files -tb self.jpg
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./YCrCbGuass/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
