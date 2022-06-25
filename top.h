#ifndef ___TOP__
#define ___TOP__

#include "hls_video.h"
#include "hls_math.h"

// maximum image size
#define MAX_WIDTH 480
#define MAX_HEIGHT 720
//rows=height 行

typedef ap_uint<1> u1;
typedef ap_uint<8> u8;

//链接里看到的http://blog.sina.com.cn/s/blog_157260c540102wvhg.html
typedef hls::stream<ap_axiu<32,1,1,1> > AXI_STREAM;

typedef hls::Scalar<3,unsigned char> RGB_PIXEL;
typedef hls::Scalar<1, unsigned char> GRAY_PIXEL;
typedef hls::Scalar<1,float> SIM_PIXEL;


typedef hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> YCrCb_IMAGE;
typedef hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC1> GRAY_IMAGE;
typedef hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_32FC1> BIN_IMAGE;

void ImgProcess_Top(AXI_STREAM& input, AXI_STREAM& output, AXI_STREAM& nor_output,int rows, int cols,double& threshold);


#endif
