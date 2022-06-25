#include "top.h"
#include "imgprocess.h"
#include <string.h>

void ImgProcess_Top(AXI_STREAM& input, AXI_STREAM& output, AXI_STREAM& nor_output,int rows, int cols,double& threshold)
{


   // #pragma HLS RESOURCE variable=input core=AXIS metadata="-bus_bundle INPUT_STREAM"
	//#pragma HLS RESOURCE variable=output core=AXIS metadata="-bus_bundle OUTPUT_STREAM"
   // #pragma HLS RESOURCE variable=nor_output core=AXIS metadata="-bus_bundle NOR_OUTPUT_STREAM"

    // rows=720;
   //  cols=480;
   	#pragma HLS INTERFACE axis port=input bundle=INPUT_STREAM
	#pragma HLS INTERFACE axis port=output bundle=OUTPUT_STREAM
	#pragma HLS INTERFACE axis port=nor_output bundle=NOR_OUTPUT_STREAM

	//#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
	//#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
   // #pragma HLS RESOURCE core=AXI_SLAVE variable=threshold metadata="-bus_bundle CONTROL_BUS"
	//#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"
 
	#pragma HLS INTERFACE ap_stable port=rows
	#pragma HLS INTERFACE ap_stable port=cols
    #pragma HLS INTERFACE ap_stable port=threshold
    #pragma HLS INTERFACE ap_ctrl_hs port=return

	RGB_IMAGE  src_mat(rows,cols);
	GRAY_IMAGE  dst_mat(rows,cols);
	BIN_IMAGE  nor_mat(rows,cols);

	#pragma HLS dataflow
	hls::AXIvideo2Mat(input, src_mat);
	//�ص㣡
	SkinColorDetect(src_mat,dst_mat,nor_mat,rows,cols,threshold);

	hls::Mat2AXIvideo(dst_mat, output);
	hls::Mat2AXIvideo(nor_mat, nor_output);
}
