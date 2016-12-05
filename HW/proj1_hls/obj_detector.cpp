#include<math.h>

#include "obj_detector.h"

void convolve(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void ReLU(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]);
void maxpool(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]);
void flatten(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
float FCL(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);

void obj_detector(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]) {
#pragma HLS INTERFACE bram port=res
#pragma HLS INTERFACE bram port=W1
#pragma HLS RESOURCE variable=W0 core=RAM_1P_BRAM
#pragma HLS INTERFACE bram port=W0
#pragma HLS RESOURCE variable=A core=RAM_1P_BRAM
#pragma HLS INTERFACE bram port=A
#pragma HLS INTERFACE s_axilite port=return bundle=control
	float s0[NUM_NEURONS][N-M+1][N-M+1];
	float s1[NUM_NEURONS][N-M+1][N-M+1];
	float s2[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2];
	float s3[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)];
	float cost[NUM_CLASSES];

	// Layer 1 - convolution
	CONV: for(int i=0; i<NUM_NEURONS; i++) {
		convolve(A, W0[i], s0[i]);
	}

	// Layer 2 - ReLU
	ReLU: for (int i=0; i<NUM_NEURONS; i++) {
		ReLU(s0[i], s1[i]);
	}

	// Layer 3 - Maxpool
	Maxpool: for (int i=0; i<NUM_NEURONS; i++) {
		maxpool(s1[i], s2[i]);
	}

	// Layer 4 - Flatten
	Flatten: flatten(s2, s3);

	// Layer 5 - FCL
	res[0] = FCL(s3, W1[0]);
	res[1] = FCL(s3, W1[1]);

	// Layer 6 - Softmax
	//softmax(cost, res);
}

/*
void obj_detector(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]){
#pragma HLS INTERFACE s_axilite port=return bundle=control
	convolve(A, B, conv);
}
*/


void convolve (float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]) {
#pragma HLS INLINE
  int x,  y;
  int i,j,k,l;
  float temp;

  convolve_label5:for (i=M/2; i<N-(M/2); i++) {
#pragma HLS PIPELINE
    convolve_label4:for (j=M/2; j<N-(M/2); j++) {
    conv[i-M/2][j-M/2] = 0;
      for (k=0; k<M; k++) {
          x = i-M/2 + k;
          y = j-M/2 + 0;
          temp = A[x][y] * B[k][0];
        convolve_label3:for (l=1; l<M; l++) {
          x = i-M/2 + k;
          y = j-M/2 + l;
          conv[i-M/2][j-M/2] += temp;
          temp = A[x][y] * B[k][l];
        }
        conv[i-M/2][j-M/2] += temp;
      }
    }
  }
}

void ReLU(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]) {
#pragma HLS INLINE
	ReLU_label0:for (int i=0; i<N-M+1; i++) {
#pragma HLS PIPELINE
		for (int j=0; j<N-M+1; j++) {
			//out[i][j] = fmax(0, inp[i][j]);
			if (inp[i][j] > 0) {
				out[i][j] = inp[i][j];
			}
			else {
				out[i][j] = 0;
			}
		}
	}
}

void maxpool(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]) {
#pragma HLS INLINE
	float max;
	maxpool_label6:for (int i=0; i<(N-M+1)/2; i++) {
#pragma HLS PIPELINE
		for (int j=0; j<(N-M+1)/2; j++) {
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
			/*
			max = 0;
			for (int k=2*i; k<2*i+1; k++) {
				for (int l=2*j; l<2*j+1; l++) {
					if (inp[k][l] > max) {
						max = inp[k][l];
					}
				}
			}
			*/
		}
	}
}

void flatten(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]) {
#pragma HLS INLINE
	flatten_label7:for (int i=0; i<NUM_NEURONS; i++) {
#pragma HLS PIPELINE
		for (int j=0; j<((N-M+1)/2); j++){
			for (int k=0; k<((N-M+1)/2); k++) {
				out[(i*((N-M+1)/2)*((N-M+1)/2)) + ((((N-M+1)/2))*j) + k] = inp[i][j][k];
			}
		}
	}
}

float FCL(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]) {
#pragma HLS INLINE
	float out = 0;
	FCL_label8:for (int i=0; i<(NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)); i++) {
#pragma HLS PIPELINE
		out += inp[i]*W[i];
	}
	return out;
}
/*
void softmax(float inp[NUM_CLASSES], float out[NUM_CLASSES]) {
	float sum = 0;
		float temp[NUM_CLASSES];
		softmax_label9:for (int i=0; i<NUM_CLASSES; i++) {
			sum += inp[i];
		}
		softmax_label10:for (int i=0; i<NUM_CLASSES; i++) {
			temp[i] = inp[i]/sum;
		}
		sum = 0;
		softmax_label11:for(int i=0; i<NUM_CLASSES; i++) {
			sum += exp(temp[i]);
		}
		softmax_label12:for (int i=0; i<NUM_CLASSES; i++) {
			out[i] = exp(temp[i])/sum;
		}
}
*/
