#include "imgprocess.h"
#include "hls_math.h"
#include "top.h"


void SkinColorDetect(RGB_IMAGE &srcImg,GRAY_IMAGE &res,BIN_IMAGE& nor,int rows, int cols,double& threshold)
{
    #pragma HLS INLINE
	YCrCb_GUASSIAN(srcImg,res,nor,rows,cols,threshold);//得到人脸区域的二值化图
}


void YCrCb_GUASSIAN(RGB_IMAGE &src,GRAY_IMAGE &res,BIN_IMAGE &nor,int rows, int cols,double& threshold)
{

#pragma HLS UNROLL
	//BIN_IMAGE  nor(MAX_HEIGHT,MAX_WIDTH);

	BIN_IMAGE  nor_copy1(MAX_HEIGHT,MAX_WIDTH);
	BIN_IMAGE  nor_copy2(MAX_HEIGHT,MAX_WIDTH);

	BIN_IMAGE Sim(MAX_HEIGHT,MAX_WIDTH);//相似度矩阵
	BIN_IMAGE Sim_copy1(MAX_HEIGHT,MAX_WIDTH);//相似度矩阵
	BIN_IMAGE Sim_copy2(MAX_HEIGHT,MAX_WIDTH);//相似度矩阵

	YCrCb_IMAGE YCrCb_IMG(MAX_HEIGHT,MAX_WIDTH);
	GRAY_IMAGE Cr_Img(MAX_HEIGHT,MAX_WIDTH), Cb_Img(MAX_HEIGHT,MAX_WIDTH), Y_Img(MAX_HEIGHT,MAX_WIDTH);
	GRAY_IMAGE gray(MAX_HEIGHT,MAX_WIDTH);
	BIN_IMAGE Sim1(MAX_HEIGHT,MAX_WIDTH);
	GRAY_IMAGE origin(MAX_HEIGHT,MAX_WIDTH);

#pragma HLS dataflow

	CvtColor<HLS_RGB2YCrCb>(src, YCrCb_IMG);
	Split(YCrCb_IMG, Y_Img,Cr_Img,Cb_Img);

	loop_height1:for (int i = 0; i <MAX_HEIGHT ; i++)
	{
		loop_weight1:for (int j = 0; j < MAX_WIDTH; j++)
		{
#pragma HLS DEPENDENCE array inter false
           // #pragma HLS loop_flatten off
			#pragma HLS pipeline II=1
			GRAY_PIXEL cr_data,cb_data;
			Cr_Img>>cr_data;
			Cb_Img>>cb_data;
			double cr,cb;
			cr=cr_data.val[0];
		    cb=cb_data.val[0];
			double mcr=117.4316,mcb=156.5599;
		    double a=299.4574,b=12.1430, c=12.1430,d=160.1301;
		    double res=(-0.5)/(a*d-b*c)*   (((cr-mcr)*d+(cb-mcb)*(-c))*(cr-mcr)+((cr-mcr)*(-b)+(cb-mcb)*a)*(cb-mcb));
		    double tmp=(hls::exp(res));/// (2*PI*hls::sqrt(4.780469e4)));

		    //double max=-1,min=1;if(tmp>=max) max=tmp;if(tmp<=min) min=tmp;//记得改sim_copy2

		    SIM_PIXEL sim_data(0);
		    sim_data.val[0]=tmp;
		    Sim<<sim_data;
		}
	}
	//求sim中的最大值最小值
	hls::Duplicate(Sim,Sim_copy1,Sim_copy2);
	double max=0,min=0;
	hls::Point max_loc,min_loc;
	hls::MinMaxLoc(Sim_copy1,&min,&max,min_loc,max_loc);
	//此时nor中的像素根据相似度大小显示，越接近1（即越像肤色）的为白，越0的为黑
	//cv::normalize(Sim, nor, 0, 1, NORM_MINMAX);
	//normalized(Sim_copy2,nor_copy1,gray,max);
	normalized(Sim_copy2,nor_copy1,gray,max,min);
	hls::Duplicate(nor_copy1,nor,nor_copy2);//复制算出来的归一化矩阵，为了可以满足dataflow和输出一份给到output
	threshold = otsu_threshold(gray);//算出来为130，即130/256.0=0.5078125
	//---------------------------------
	//调用库函数threshold实现优化，但是必须在normalized从gary再复制个gray1，不然只有一个的话会导致dataflow错误
	//最终测试出来优化并没有好多少，时延基本不变,lut+(1%),ff-(1%),dsp+(5%)
	//hls::Threshold(gray1,origin,(int)(threshold*255),255,HLS_THRESH_BINARY);
    //----------------------------------
	loop_height2:for (int i = 0; i < MAX_HEIGHT; i++)
		loop_weight2:for (int j = 0; j <  MAX_WIDTH; j++)
		{
#pragma HLS DEPENDENCE array inter false//加了没加一样的
			//#pragma HLS loop_flatten off
			#pragma HLS pipeline II=1
			SIM_PIXEL nor_data;
			nor_copy2>>nor_data;
			float nor_val=nor_data.val[0];

			GRAY_PIXEL origin_data(0);
			if (nor_val> threshold)
				{origin_data.val[0]= (unsigned char)255;}
			else
				{origin_data.val[0]= (unsigned char)0;}

			origin<<origin_data;
		}
	//imshow("ycrcb高斯模型+ostu二值化效果图", origin);//反映了高斯模型最原始的检测效果
	erode_dilate(origin,res);
}

//-----------otsu自适应阀值算法----------------
double otsu_threshold( GRAY_IMAGE& gray)
{
#pragma HLS UNROLL
	int img_width;
	int img_height;
	int size;
	float P1, P2;
	float m1 = 0, m2 = 0, mg = 0;
	int k_otsu;  //最终找到的阈值
	float deltaTmp = 0, deltaMax = 0;  //类间方差
	int n0_k = 0;   //即(n0 +n1 + n2 +...nk)
	int nk_255 = 0;

	int nk_X_k = 0;  //   表示(0*n0 + 1*n1 +2*n2 ...k*nk )
	int nk_X_k2 = 0;  //  表示


	int pixel_count[256]={0};   //存储0-255每个像素的个数 即ni
#pragma HLS array_partition variable=pixel_count complete //效果很好！而block和reshape就不好

	img_width = gray.cols;
	img_height = gray.rows;
	size = img_width * img_height;
	/*loop_1:for (int i = 0; i < 256; i++)
	{
        #pragma HLS loop_flatten off
        #pragma HLS pipeline II=1
		pixel_count[i] = 0;
	}*/

	//归一化直方:图，统计每个像素点个数   即pi
	loop_otsu_height1:for (int i = 0; i < MAX_HEIGHT; i++)
	{
		loop_otsu_weight1:for (int j = 0; j <  MAX_WIDTH; j++)
		{
//******************这个循环需要注意，这里存在依赖*********
//#pragma HLS DEPENDENCE variable=pixel_count inter false
//不可以，因为pixel_count得先完成后才能继续下一次赋值,存在依赖
           // #pragma HLS loop_flatten off
			#pragma HLS pipeline II=1//Ⅱ=2,最后分离数组又变为了1

			GRAY_PIXEL gray_data;
			gray>>gray_data;
			int tmp=gray_data.val[0];

			pixel_count[tmp]++;
			//pixel_count[gray.at<unsigned char>(i, j)]++;
		}

	}
	//计算mg ，mg为总的像素平均灰度值
	loop_otsu_2:for (int i = 0; i < 256; i++)
	{
#pragma HLS DEPENDENCE variable=pixel_count inter false
   //#pragma HLS loop_flatten off
    #pragma HLS pipeline II=1 //Ⅱ=5,这是由于mg的依赖性导致的
		mg += pixel_count[i] * i;

	}
	mg = mg / size;


	//非完美循环函数
	loop_otsu_3:for (int k = 1; k < 256; k++)    //类间方差统计  阈值k从0-255，筛选出最大方差的k
	{

		n0_k = 0;
		nk_X_k = 0;
		nk_X_k2 = 0;
		loop_3_1:for (int i = 0; i <= k; i++)
		{
#pragma HLS DEPENDENCE variable=pixel_count inter false
         #pragma HLS pipeline II=1
			n0_k += pixel_count[i];     //   P1 = n0_k  / size
			nk_X_k += pixel_count[i] * i;  // m1 = nk_X_k / n0_k

		}
		loop_3_2:for (int j = k + 1; j < 256; j++)   //计算m2
		{
#pragma HLS DEPENDENCE variable=pixel_count inter false
            #pragma HLS pipeline II=1
			nk_X_k2 += pixel_count[j] * j;
		}

		P1 = n0_k / (float)size;
		m1 = nk_X_k / n0_k;
		P2 = 1 - P1;
		m2 = nk_X_k2 / (float)(size - n0_k);

		deltaTmp = P1 * (m1 - mg)*(m1 - mg) + P2 * (m2 - mg)*(m2 - mg);  //类间方差
		if (deltaTmp > deltaMax)
		{
			deltaMax = deltaTmp;
			k_otsu = k;
		}
	}

	//★23.17 20.3.21-----------改写为完美循环，时延很好了但是LUT和FF都超标了---------
	/*	loop_otsu_3:for (int k = 1; k < 256; k++)    //类间方差统计  阈值k从0-255，筛选出最大方差的k
			{
		loop_otsu_3_1:for (int i = 0; i < 256; i++)
					{
	#pragma HLS DEPENDENCE variable=pixel_count inter false
	#pragma HLS pipeline II=1
			  	  	  	if (i == 0) {
							n0_k = 0;
							nk_X_k = 0;
							nk_X_k2 = 0;
						}
						if (i < k + 1) {
							n0_k += pixel_count[i];     //   P1 = n0_k  / size

							nk_X_k += pixel_count[i] * i;
						}
						if (i < 255 - k) {
							nk_X_k2 += pixel_count[i + k + 1] * (i + k + 1);
						}

						if (i == 255)
						{
						P1 = n0_k / (float)size;
						m1 = nk_X_k / n0_k;
						P2 = 1 - P1;
						m2 = nk_X_k2 / (float)(size - n0_k);

						deltaTmp = P1 * (m1 - mg)*(m1 - mg) + P2 * (m2 - mg)*(m2 - mg);  //类间方差
						if (deltaTmp > deltaMax)
							{
								deltaMax = deltaTmp;
								k_otsu = k;
							}
						}
					}
	}*/
	return k_otsu/255.0;//对于test1是0.47
}

//--------------对相似度矩阵归一化+转为（0,255）gray类型-----------
void normalized(BIN_IMAGE &sim, BIN_IMAGE  &nor,GRAY_IMAGE  &gray,/*GRAY_IMAGE& gray1,*/double max,double min){
#pragma HLS dataflow
#pragma HLS UNROLL

		loop_height4:for(int i=0;i<MAX_HEIGHT;i++)
		{
			loop_weight4:for(int j=0;j<MAX_WIDTH;j++)
			{
#pragma HLS DEPENDENCE array inter false
               // #pragma HLS loop_flatten off
				#pragma HLS pipeline II=1

				SIM_PIXEL nor_data(0),sim_data;
				sim>>sim_data;
				float tmp=(sim_data.val[0]-min)/(max-min);//遵从norm_minmax的归一化 而不是直接除以max

				nor_data.val[0]=tmp;
				nor<<nor_data;

				GRAY_PIXEL gray_data(0);
				int tmp1=(int)(tmp*255.0);	//nor.convertTo(gary,CV_8UC1, 255);//正确转换，nor-》gary灰色图
				gray_data.val[0]=(unsigned char)tmp1;
				gray<<gray_data;
			}
		}
}

//-------------开运算----------------
bool erode_dilate(GRAY_IMAGE &img,GRAY_IMAGE &res) {
	//if (img.empty()) { return false; };
    #pragma HLS dataflow
	GRAY_IMAGE tmp_img(MAX_HEIGHT, MAX_WIDTH);
	hls::Erode(img,tmp_img);
	hls::Dilate(tmp_img,res);
	return true;
}
