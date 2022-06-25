#include "imgprocess.h"
#include "hls_math.h"
#include "top.h"


void SkinColorDetect(RGB_IMAGE &srcImg,GRAY_IMAGE &res,BIN_IMAGE& nor,int rows, int cols,double& threshold)
{
    #pragma HLS INLINE
	YCrCb_GUASSIAN(srcImg,res,nor,rows,cols,threshold);//�õ���������Ķ�ֵ��ͼ
}


void YCrCb_GUASSIAN(RGB_IMAGE &src,GRAY_IMAGE &res,BIN_IMAGE &nor,int rows, int cols,double& threshold)
{

#pragma HLS UNROLL
	//BIN_IMAGE  nor(MAX_HEIGHT,MAX_WIDTH);

	BIN_IMAGE  nor_copy1(MAX_HEIGHT,MAX_WIDTH);
	BIN_IMAGE  nor_copy2(MAX_HEIGHT,MAX_WIDTH);

	BIN_IMAGE Sim(MAX_HEIGHT,MAX_WIDTH);//���ƶȾ���
	BIN_IMAGE Sim_copy1(MAX_HEIGHT,MAX_WIDTH);//���ƶȾ���
	BIN_IMAGE Sim_copy2(MAX_HEIGHT,MAX_WIDTH);//���ƶȾ���

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

		    //double max=-1,min=1;if(tmp>=max) max=tmp;if(tmp<=min) min=tmp;//�ǵø�sim_copy2

		    SIM_PIXEL sim_data(0);
		    sim_data.val[0]=tmp;
		    Sim<<sim_data;
		}
	}
	//��sim�е����ֵ��Сֵ
	hls::Duplicate(Sim,Sim_copy1,Sim_copy2);
	double max=0,min=0;
	hls::Point max_loc,min_loc;
	hls::MinMaxLoc(Sim_copy1,&min,&max,min_loc,max_loc);
	//��ʱnor�е����ظ������ƶȴ�С��ʾ��Խ�ӽ�1����Խ���ɫ����Ϊ�ף�Խ0��Ϊ��
	//cv::normalize(Sim, nor, 0, 1, NORM_MINMAX);
	//normalized(Sim_copy2,nor_copy1,gray,max);
	normalized(Sim_copy2,nor_copy1,gray,max,min);
	hls::Duplicate(nor_copy1,nor,nor_copy2);//����������Ĺ�һ������Ϊ�˿�������dataflow�����һ�ݸ���output
	threshold = otsu_threshold(gray);//�����Ϊ130����130/256.0=0.5078125
	//---------------------------------
	//���ÿ⺯��thresholdʵ���Ż������Ǳ�����normalized��gary�ٸ��Ƹ�gray1����Ȼֻ��һ���Ļ��ᵼ��dataflow����
	//���ղ��Գ����Ż���û�кö��٣�ʱ�ӻ�������,lut+(1%),ff-(1%),dsp+(5%)
	//hls::Threshold(gray1,origin,(int)(threshold*255),255,HLS_THRESH_BINARY);
    //----------------------------------
	loop_height2:for (int i = 0; i < MAX_HEIGHT; i++)
		loop_weight2:for (int j = 0; j <  MAX_WIDTH; j++)
		{
#pragma HLS DEPENDENCE array inter false//����û��һ����
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
	//imshow("ycrcb��˹ģ��+ostu��ֵ��Ч��ͼ", origin);//��ӳ�˸�˹ģ����ԭʼ�ļ��Ч��
	erode_dilate(origin,res);
}

//-----------otsu����Ӧ��ֵ�㷨----------------
double otsu_threshold( GRAY_IMAGE& gray)
{
#pragma HLS UNROLL
	int img_width;
	int img_height;
	int size;
	float P1, P2;
	float m1 = 0, m2 = 0, mg = 0;
	int k_otsu;  //�����ҵ�����ֵ
	float deltaTmp = 0, deltaMax = 0;  //��䷽��
	int n0_k = 0;   //��(n0 +n1 + n2 +...nk)
	int nk_255 = 0;

	int nk_X_k = 0;  //   ��ʾ(0*n0 + 1*n1 +2*n2 ...k*nk )
	int nk_X_k2 = 0;  //  ��ʾ


	int pixel_count[256]={0};   //�洢0-255ÿ�����صĸ��� ��ni
#pragma HLS array_partition variable=pixel_count complete //Ч���ܺã���block��reshape�Ͳ���

	img_width = gray.cols;
	img_height = gray.rows;
	size = img_width * img_height;
	/*loop_1:for (int i = 0; i < 256; i++)
	{
        #pragma HLS loop_flatten off
        #pragma HLS pipeline II=1
		pixel_count[i] = 0;
	}*/

	//��һ��ֱ��:ͼ��ͳ��ÿ�����ص����   ��pi
	loop_otsu_height1:for (int i = 0; i < MAX_HEIGHT; i++)
	{
		loop_otsu_weight1:for (int j = 0; j <  MAX_WIDTH; j++)
		{
//******************���ѭ����Ҫע�⣬�����������*********
//#pragma HLS DEPENDENCE variable=pixel_count inter false
//�����ԣ���Ϊpixel_count������ɺ���ܼ�����һ�θ�ֵ,��������
           // #pragma HLS loop_flatten off
			#pragma HLS pipeline II=1//��=2,�����������ֱ�Ϊ��1

			GRAY_PIXEL gray_data;
			gray>>gray_data;
			int tmp=gray_data.val[0];

			pixel_count[tmp]++;
			//pixel_count[gray.at<unsigned char>(i, j)]++;
		}

	}
	//����mg ��mgΪ�ܵ�����ƽ���Ҷ�ֵ
	loop_otsu_2:for (int i = 0; i < 256; i++)
	{
#pragma HLS DEPENDENCE variable=pixel_count inter false
   //#pragma HLS loop_flatten off
    #pragma HLS pipeline II=1 //��=5,��������mg�������Ե��µ�
		mg += pixel_count[i] * i;

	}
	mg = mg / size;


	//������ѭ������
	loop_otsu_3:for (int k = 1; k < 256; k++)    //��䷽��ͳ��  ��ֵk��0-255��ɸѡ����󷽲��k
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
		loop_3_2:for (int j = k + 1; j < 256; j++)   //����m2
		{
#pragma HLS DEPENDENCE variable=pixel_count inter false
            #pragma HLS pipeline II=1
			nk_X_k2 += pixel_count[j] * j;
		}

		P1 = n0_k / (float)size;
		m1 = nk_X_k / n0_k;
		P2 = 1 - P1;
		m2 = nk_X_k2 / (float)(size - n0_k);

		deltaTmp = P1 * (m1 - mg)*(m1 - mg) + P2 * (m2 - mg)*(m2 - mg);  //��䷽��
		if (deltaTmp > deltaMax)
		{
			deltaMax = deltaTmp;
			k_otsu = k;
		}
	}

	//��23.17 20.3.21-----------��дΪ����ѭ����ʱ�Ӻܺ��˵���LUT��FF��������---------
	/*	loop_otsu_3:for (int k = 1; k < 256; k++)    //��䷽��ͳ��  ��ֵk��0-255��ɸѡ����󷽲��k
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

						deltaTmp = P1 * (m1 - mg)*(m1 - mg) + P2 * (m2 - mg)*(m2 - mg);  //��䷽��
						if (deltaTmp > deltaMax)
							{
								deltaMax = deltaTmp;
								k_otsu = k;
							}
						}
					}
	}*/
	return k_otsu/255.0;//����test1��0.47
}

//--------------�����ƶȾ����һ��+תΪ��0,255��gray����-----------
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
				float tmp=(sim_data.val[0]-min)/(max-min);//���norm_minmax�Ĺ�һ�� ������ֱ�ӳ���max

				nor_data.val[0]=tmp;
				nor<<nor_data;

				GRAY_PIXEL gray_data(0);
				int tmp1=(int)(tmp*255.0);	//nor.convertTo(gary,CV_8UC1, 255);//��ȷת����nor-��gary��ɫͼ
				gray_data.val[0]=(unsigned char)tmp1;
				gray<<gray_data;
			}
		}
}

//-------------������----------------
bool erode_dilate(GRAY_IMAGE &img,GRAY_IMAGE &res) {
	//if (img.empty()) { return false; };
    #pragma HLS dataflow
	GRAY_IMAGE tmp_img(MAX_HEIGHT, MAX_WIDTH);
	hls::Erode(img,tmp_img);
	hls::Dilate(tmp_img,res);
	return true;
}
