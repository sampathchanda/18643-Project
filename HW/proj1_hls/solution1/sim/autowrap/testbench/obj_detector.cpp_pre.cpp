# 1 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.cpp"
# 1 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 1 3
# 16 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
       
# 17 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3



# 1 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 1 3
# 32 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
       
# 33 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
# 21 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 2 3
# 90 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern "C" {
# 134 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _exception
{
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};

 double __attribute__((__cdecl__)) sin (double);
 double __attribute__((__cdecl__)) cos (double);
 double __attribute__((__cdecl__)) tan (double);
 double __attribute__((__cdecl__)) sinh (double);
 double __attribute__((__cdecl__)) cosh (double);
 double __attribute__((__cdecl__)) tanh (double);
 double __attribute__((__cdecl__)) asin (double);
 double __attribute__((__cdecl__)) acos (double);
 double __attribute__((__cdecl__)) atan (double);
 double __attribute__((__cdecl__)) atan2 (double, double);
 double __attribute__((__cdecl__)) exp (double);
 double __attribute__((__cdecl__)) log (double);
 double __attribute__((__cdecl__)) log10 (double);
 double __attribute__((__cdecl__)) pow (double, double);
 double __attribute__((__cdecl__)) sqrt (double);
 double __attribute__((__cdecl__)) ceil (double);
 double __attribute__((__cdecl__)) floor (double);
 double __attribute__((__cdecl__)) fabs (double);
 double __attribute__((__cdecl__)) ldexp (double, int);
 double __attribute__((__cdecl__)) frexp (double, int*);
 double __attribute__((__cdecl__)) modf (double, double*);
 double __attribute__((__cdecl__)) fmod (double, double);
# 210 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _complex
{
 double x;
 double y;
};

 double __attribute__((__cdecl__)) _cabs (struct _complex);

 double __attribute__((__cdecl__)) _hypot (double, double);
 double __attribute__((__cdecl__)) _j0 (double);
 double __attribute__((__cdecl__)) _j1 (double);
 double __attribute__((__cdecl__)) _jn (int, double);
 double __attribute__((__cdecl__)) _y0 (double);
 double __attribute__((__cdecl__)) _y1 (double);
 double __attribute__((__cdecl__)) _yn (int, double);
 int __attribute__((__cdecl__)) _matherr (struct _exception *);
# 234 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) _chgsign (double);
 double __attribute__((__cdecl__)) _copysign (double, double);
 double __attribute__((__cdecl__)) _logb (double);
 double __attribute__((__cdecl__)) _nextafter (double, double);
 double __attribute__((__cdecl__)) _scalb (double, long);

 int __attribute__((__cdecl__)) _finite (double);
 int __attribute__((__cdecl__)) _fpclass (double);
 int __attribute__((__cdecl__)) _isnan (double);
# 254 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) j0 (double);
 double __attribute__((__cdecl__)) j1 (double);
 double __attribute__((__cdecl__)) jn (int, double);
 double __attribute__((__cdecl__)) y0 (double);
 double __attribute__((__cdecl__)) y1 (double);
 double __attribute__((__cdecl__)) yn (int, double);

 double __attribute__((__cdecl__)) chgsign (double);
# 270 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 int __attribute__((__cdecl__)) finite (double);
 int __attribute__((__cdecl__)) fpclass (double);
# 324 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
typedef long double float_t;
typedef long double double_t;
# 354 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __fpclassifyf (float);
extern int __attribute__((__cdecl__)) __fpclassify (double);
extern int __attribute__((__cdecl__)) __fpclassifyl (long double);
# 379 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __isnan (double);
extern int __attribute__((__cdecl__)) __isnanf (float);
extern int __attribute__((__cdecl__)) __isnanl (long double);
# 419 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __signbit (double);
extern int __attribute__((__cdecl__)) __signbitf (float);
extern int __attribute__((__cdecl__)) __signbitl (long double);
# 447 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) sinf (float);
extern long double __attribute__((__cdecl__)) sinl (long double);

extern float __attribute__((__cdecl__)) cosf (float);
extern long double __attribute__((__cdecl__)) cosl (long double);

extern float __attribute__((__cdecl__)) tanf (float);
extern long double __attribute__((__cdecl__)) tanl (long double);

extern float __attribute__((__cdecl__)) asinf (float);
extern long double __attribute__((__cdecl__)) asinl (long double);

extern float __attribute__((__cdecl__)) acosf (float);
extern long double __attribute__((__cdecl__)) acosl (long double);

extern float __attribute__((__cdecl__)) atanf (float);
extern long double __attribute__((__cdecl__)) atanl (long double);

extern float __attribute__((__cdecl__)) atan2f (float, float);
extern long double __attribute__((__cdecl__)) atan2l (long double, long double);


extern float __attribute__((__cdecl__)) sinhf (float);




extern long double __attribute__((__cdecl__)) sinhl (long double);

extern float __attribute__((__cdecl__)) coshf (float);




extern long double __attribute__((__cdecl__)) coshl (long double);

extern float __attribute__((__cdecl__)) tanhf (float);




extern long double __attribute__((__cdecl__)) tanhl (long double);



extern double __attribute__((__cdecl__)) acosh (double);
extern float __attribute__((__cdecl__)) acoshf (float);
extern long double __attribute__((__cdecl__)) acoshl (long double);


extern double __attribute__((__cdecl__)) asinh (double);
extern float __attribute__((__cdecl__)) asinhf (float);
extern long double __attribute__((__cdecl__)) asinhl (long double);


extern double __attribute__((__cdecl__)) atanh (double);
extern float __attribute__((__cdecl__)) atanhf (float);
extern long double __attribute__((__cdecl__)) atanhl (long double);



extern float __attribute__((__cdecl__)) expf (float);




extern long double __attribute__((__cdecl__)) expl (long double);


extern double __attribute__((__cdecl__)) exp2(double);
extern float __attribute__((__cdecl__)) exp2f(float);
extern long double __attribute__((__cdecl__)) exp2l(long double);



extern double __attribute__((__cdecl__)) expm1(double);
extern float __attribute__((__cdecl__)) expm1f(float);
extern long double __attribute__((__cdecl__)) expm1l(long double);


extern float __attribute__((__cdecl__)) frexpf (float, int*);




extern long double __attribute__((__cdecl__)) frexpl (long double, int*);




extern int __attribute__((__cdecl__)) ilogb (double);
extern int __attribute__((__cdecl__)) ilogbf (float);
extern int __attribute__((__cdecl__)) ilogbl (long double);


extern float __attribute__((__cdecl__)) ldexpf (float, int);




extern long double __attribute__((__cdecl__)) ldexpl (long double, int);


extern float __attribute__((__cdecl__)) logf (float);
extern long double __attribute__((__cdecl__)) logl (long double);


extern float __attribute__((__cdecl__)) log10f (float);
extern long double __attribute__((__cdecl__)) log10l (long double);


extern double __attribute__((__cdecl__)) log1p(double);
extern float __attribute__((__cdecl__)) log1pf(float);
extern long double __attribute__((__cdecl__)) log1pl(long double);


extern double __attribute__((__cdecl__)) log2 (double);
extern float __attribute__((__cdecl__)) log2f (float);
extern long double __attribute__((__cdecl__)) log2l (long double);


extern double __attribute__((__cdecl__)) logb (double);
extern float __attribute__((__cdecl__)) logbf (float);
extern long double __attribute__((__cdecl__)) logbl (long double);
# 603 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) modff (float, float*);
extern long double __attribute__((__cdecl__)) modfl (long double, long double*);


extern double __attribute__((__cdecl__)) scalbn (double, int);
extern float __attribute__((__cdecl__)) scalbnf (float, int);
extern long double __attribute__((__cdecl__)) scalbnl (long double, int);

extern double __attribute__((__cdecl__)) scalbln (double, long);
extern float __attribute__((__cdecl__)) scalblnf (float, long);
extern long double __attribute__((__cdecl__)) scalblnl (long double, long);



extern double __attribute__((__cdecl__)) cbrt (double);
extern float __attribute__((__cdecl__)) cbrtf (float);
extern long double __attribute__((__cdecl__)) cbrtl (long double);


extern float __attribute__((__cdecl__)) fabsf (float x);
extern long double __attribute__((__cdecl__)) fabsl (long double x);


extern double __attribute__((__cdecl__)) hypot (double, double);
extern float __attribute__((__cdecl__)) hypotf (float, float);




extern long double __attribute__((__cdecl__)) hypotl (long double, long double);


extern float __attribute__((__cdecl__)) powf (float, float);




extern long double __attribute__((__cdecl__)) powl (long double, long double);


extern float __attribute__((__cdecl__)) sqrtf (float);
extern long double __attribute__((__cdecl__)) sqrtl (long double);


extern double __attribute__((__cdecl__)) erf (double);
extern float __attribute__((__cdecl__)) erff (float);
extern long double __attribute__((__cdecl__)) erfl (long double);


extern double __attribute__((__cdecl__)) erfc (double);
extern float __attribute__((__cdecl__)) erfcf (float);
extern long double __attribute__((__cdecl__)) erfcl (long double);


extern double __attribute__((__cdecl__)) lgamma (double);
extern float __attribute__((__cdecl__)) lgammaf (float);
extern long double __attribute__((__cdecl__)) lgammal (long double);


extern double __attribute__((__cdecl__)) tgamma (double);
extern float __attribute__((__cdecl__)) tgammaf (float);
extern long double __attribute__((__cdecl__)) tgammal (long double);


extern float __attribute__((__cdecl__)) ceilf (float);
extern long double __attribute__((__cdecl__)) ceill (long double);


extern float __attribute__((__cdecl__)) floorf (float);
extern long double __attribute__((__cdecl__)) floorl (long double);


extern double __attribute__((__cdecl__)) nearbyint ( double);
extern float __attribute__((__cdecl__)) nearbyintf (float);
extern long double __attribute__((__cdecl__)) nearbyintl (long double);



extern double __attribute__((__cdecl__)) rint (double);
extern float __attribute__((__cdecl__)) rintf (float);
extern long double __attribute__((__cdecl__)) rintl (long double);


extern long __attribute__((__cdecl__)) lrint (double);
extern long __attribute__((__cdecl__)) lrintf (float);
extern long __attribute__((__cdecl__)) lrintl (long double);

extern long long __attribute__((__cdecl__)) llrint (double);
extern long long __attribute__((__cdecl__)) llrintf (float);
extern long long __attribute__((__cdecl__)) llrintl (long double);
# 771 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) round (double);
extern float __attribute__((__cdecl__)) roundf (float);
extern long double __attribute__((__cdecl__)) roundl (long double);


extern long __attribute__((__cdecl__)) lround (double);
extern long __attribute__((__cdecl__)) lroundf (float);
extern long __attribute__((__cdecl__)) lroundl (long double);

extern long long __attribute__((__cdecl__)) llround (double);
extern long long __attribute__((__cdecl__)) llroundf (float);
extern long long __attribute__((__cdecl__)) llroundl (long double);



extern double __attribute__((__cdecl__)) trunc (double);
extern float __attribute__((__cdecl__)) truncf (float);
extern long double __attribute__((__cdecl__)) truncl (long double);


extern float __attribute__((__cdecl__)) fmodf (float, float);
extern long double __attribute__((__cdecl__)) fmodl (long double, long double);


extern double __attribute__((__cdecl__)) remainder (double, double);
extern float __attribute__((__cdecl__)) remainderf (float, float);
extern long double __attribute__((__cdecl__)) remainderl (long double, long double);


extern double __attribute__((__cdecl__)) remquo(double, double, int *);
extern float __attribute__((__cdecl__)) remquof(float, float, int *);
extern long double __attribute__((__cdecl__)) remquol(long double, long double, int *);


extern double __attribute__((__cdecl__)) copysign (double, double);
extern float __attribute__((__cdecl__)) copysignf (float, float);
extern long double __attribute__((__cdecl__)) copysignl (long double, long double);


extern double __attribute__((__cdecl__)) nan(const char *tagp);
extern float __attribute__((__cdecl__)) nanf(const char *tagp);
extern long double __attribute__((__cdecl__)) nanl(const char *tagp);
# 821 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) nextafter (double, double);
extern float __attribute__((__cdecl__)) nextafterf (float, float);
extern long double __attribute__((__cdecl__)) nextafterl (long double, long double);


extern double __attribute__((__cdecl__)) nexttoward (double, long double);
extern float __attribute__((__cdecl__)) nexttowardf (float, long double);
extern long double __attribute__((__cdecl__)) nexttowardl (long double, long double);



extern double __attribute__((__cdecl__)) fdim (double x, double y);
extern float __attribute__((__cdecl__)) fdimf (float x, float y);
extern long double __attribute__((__cdecl__)) fdiml (long double x, long double y);







extern double __attribute__((__cdecl__)) fmax (double, double);
extern float __attribute__((__cdecl__)) fmaxf (float, float);
extern long double __attribute__((__cdecl__)) fmaxl (long double, long double);


extern double __attribute__((__cdecl__)) fmin (double, double);
extern float __attribute__((__cdecl__)) fminf (float, float);
extern long double __attribute__((__cdecl__)) fminl (long double, long double);



extern double __attribute__((__cdecl__)) fma (double, double, double);
extern float __attribute__((__cdecl__)) fmaf (float, float, float);
extern long double __attribute__((__cdecl__)) fmal (long double, long double, long double);
# 910 "c:\\xilinx\\vivado_hls\\2015.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
}
# 2 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.cpp" 2

# 1 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.h" 1
# 11 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.h"
typedef float mat_a;
typedef float mat_b;
typedef float mat_conv;



void obj_detector(float A[28][28], float W0[6][5][5], float W1[2][6*((28 -5 +1)/2)*((28 -5 +1)/2)], float res[2]);
# 4 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.cpp" 2

void convolve(float A[28][28], float B[5][5], float conv[28 -5 +1][28 -5 +1]);
void ReLU(float inp[28 -5 +1][28 -5 +1], float out[28 -5 +1][28 -5 +1]);
void maxpool(float inp[28 -5 +1][28 -5 +1], float out[(28 -5 +1)/2][(28 -5 +1)/2]);
void flatten(float inp[6][(28 -5 +1)/2][(28 -5 +1)/2], float out[6*((28 -5 +1)/2)*((28 -5 +1)/2)]);
float FCL(float inp[6*((28 -5 +1)/2)*((28 -5 +1)/2)], float W[6*((28 -5 +1)/2)*((28 -5 +1)/2)]);
void softmax(float inp[2], float out[2]);

void obj_detector(float A[28][28], float W0[6][5][5], float W1[2][6*((28 -5 +1)/2)*((28 -5 +1)/2)], float res[2]) {
#pragma HLS INTERFACE s_axilite port=return bundle=control
 float s0[6][28 -5 +1][28 -5 +1];
 float s1[6][28 -5 +1][28 -5 +1];
 float s2[6][(28 -5 +1)/2][(28 -5 +1)/2];
 float s3[6*((28 -5 +1)/2)*((28 -5 +1)/2)];
 float cost[2];


 CONV: for(int i=0; i<6; i++) {
  convolve(A, W0[i], s0[i]);
 }


 ReLU: for (int i=0; i<6; i++) {
  ReLU(s0[i], s1[i]);
 }


 Maxpool: for (int i=0; i<6; i++) {
  maxpool(s1[i], s2[i]);
 }


 Flatten: flatten(s2, s3);


 cost[0] = FCL(s3, W1[0]);
 cost[1] = FCL(s3, W1[1]);


 softmax(cost, res);
}
# 54 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.cpp"
void convolve (float A[28][28], float B[5][5], float conv[28 -5 +1][28 -5 +1]) {
  int x, y;
  int i,j,k,l;
  float temp;

  for (i=5/2; i<28 -(5/2); i++) {
    for (j=5/2; j<28 -(5/2); j++) {
    conv[i-5/2][j-5/2] = 0;
      for (k=0; k<5; k++) {
          x = i-5/2 + k;
          y = j-5/2 + 0;
          temp = A[x][y] * B[k][l];
        for (l=1; l<5; l++) {
          x = i-5/2 + k;
          y = j-5/2 + l;
          conv[i-5/2][j-5/2] += temp;
          temp= A[x][y] * B[k][l];
        }
      }
    }
  }
}

void ReLU(float inp[28 -5 +1][28 -5 +1], float out[28 -5 +1][28 -5 +1]) {

 ReLU_label0:for (int i=0; i<28 -5 +1; i++) {
  for (int j=0; j<28 -5 +1; j++) {

   if (inp[i][j] > 0) {
    out[i][j] = inp[i][j];
   }
   else {
    out[i][j] = 0;
   }
  }
 }
}

void maxpool(float inp[28 -5 +1][28 -5 +1], float out[(28 -5 +1)/2][(28 -5 +1)/2]) {
 float max;
 for (int i=0; i<(28 -5 +1)/2; i++) {
  for (int j=0; j<(28 -5 +1)/2; j++) {
   if (inp[2*i][2*j] > inp[2*i][(2*j)+1]) {
    max = inp[2*i][2*j];
   } else {
    max = inp[2*i][(2*j)+1];
   }
   if (inp[(2*i)+1][2*j] > max) {
    max = inp[(2*i)+1][2*j];
   }
   if (inp[(2*i)+1][(2*j)+1] > max) {
    max = inp[(2*i)+1][(2*j)+1];
   }
   out[i][j] = max;
# 118 "C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/obj_detector.cpp"
  }
 }
}

void flatten(float inp[6][(28 -5 +1)/2][(28 -5 +1)/2], float out[6*((28 -5 +1)/2)*((28 -5 +1)/2)]) {
 for (int i=0; i<6; i++) {
  for (int j=0; j<((28 -5 +1)/2); j++){
   for (int k=0; k<((28 -5 +1)/2); k++) {
    out[(i*((28 -5 +1)/2)*((28 -5 +1)/2)) + ((((28 -5 +1)/2))*j) + k] = inp[i][j][k];
   }
  }
 }
}

float FCL(float inp[6*((28 -5 +1)/2)*((28 -5 +1)/2)], float W[6*((28 -5 +1)/2)*((28 -5 +1)/2)]) {
 float out = 0;
 for (int i=0; i<(6*((28 -5 +1)/2)*((28 -5 +1)/2)); i++) {
  out += inp[i]*W[i];
 }
 return out;
}

void softmax(float inp[2], float out[2]) {
 float sum = 0;
  float temp[2];
  for (int i=0; i<2; i++) {
   sum += inp[i];
  }
  for (int i=0; i<2; i++) {
   temp[i] = inp[i]/sum;
  }
  sum = 0;
  for(int i=0; i<2; i++) {
   sum += exp(temp[i]);
  }
  for (int i=0; i<2; i++) {
   out[i] = exp(temp[i])/sum;
  }
}
