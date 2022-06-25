#ifndef ___IMAGEPROCESS__
#define ___IMAGEPROCESS__
#include "top.h"

using namespace hls;
#define PI 3.1415

void YCrCb_GUASSIAN(RGB_IMAGE& src,GRAY_IMAGE& res,BIN_IMAGE& nor,int rows, int cols,double &threshold);
double otsu_threshold(GRAY_IMAGE& img);

void SkinColorDetect(RGB_IMAGE &srcImg,GRAY_IMAGE& res,BIN_IMAGE& nor,int rows, int cols,double &threshold);

void normalized(BIN_IMAGE &sim, BIN_IMAGE  &nor,GRAY_IMAGE & gray,double max,double min);
bool erode_dilate(GRAY_IMAGE &img,GRAY_IMAGE &res) ;
#endif
