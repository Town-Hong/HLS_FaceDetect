#include "top.h"
#include "hls_opencv.h"
#include"iostream"
#include<time.h>
using namespace std;
using namespace cv;
 
 
int main (int argc, char** argv) {
 
    Mat src = imread("test1.jpg");

	AXI_STREAM  src_axi, dst_axi,nor_axi;


	/*---------------
		//统一图片像素大小，保持长宽比（为了不改变人脸形状），方便后面统一操作
	---------------*/
	//int proportion=src.cols/src.rows;
   // resize(src,src,Size(640*proportion,640));
    //Mat dst(Size(src.cols,src.rows),CV_8UC1);

	resize(src,src,Size(480,720));
	Mat dst(Size(480,720),CV_8UC1);
	Mat nor(Size(480,720),CV_32FC1);

	double threshold=0.0;

	int rows=src.rows,cols=src.cols;
	//mat to axi video
	cvMat2AXIvideo(src, src_axi);

	//test function
	ImgProcess_Top(src_axi, dst_axi,nor_axi, rows,cols,threshold);

	//axi video to mat
	AXIvideo2cvMat(dst_axi, dst);
	AXIvideo2cvMat(nor_axi, nor);

 
	cout<<"ostu算法选定的阀值大小:"<<threshold<<endl;
	//cout<<"相似度矩阵中的最大值:"<<max<<endl;//对于self.jpg是0.999034，vs是0.99902653..
	imshow("测试原图",src);
	imshow("YCrCb高斯检测结果",dst);
	imshow("相似度图片",nor);
 
	waitKey(0);
 
	return 0;
}
