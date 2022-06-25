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
		//ͳһͼƬ���ش�С�����ֳ���ȣ�Ϊ�˲��ı�������״�����������ͳһ����
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

 
	cout<<"ostu�㷨ѡ���ķ�ֵ��С:"<<threshold<<endl;
	//cout<<"���ƶȾ����е����ֵ:"<<max<<endl;//����self.jpg��0.999034��vs��0.99902653..
	imshow("����ԭͼ",src);
	imshow("YCrCb��˹�����",dst);
	imshow("���ƶ�ͼƬ",nor);
 
	waitKey(0);
 
	return 0;
}
