#ifndef OBJ_DETECTOR_H_
#define OBJ_DETECTOR_H_

#define HW_COSIM

#define N 28
#define M 5
#define NUM_NEURONS 6
#define NUM_CLASSES 2

typedef float mat_a;
typedef float mat_b;
typedef float mat_conv;

#ifdef HW_COSIM
//void obj_detector(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void obj_detector(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]);
#endif

#endif /* OBJ_DETECTOR_H_ */
