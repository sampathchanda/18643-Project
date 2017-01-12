#include<math.h>
#include<iostream>
#include<cstdlib>
#include<cfloat>
#include<stdio.h>
#include<cstring>
#include "obj_detector.h"

void convolve(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void ReLU(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]);
void maxpool(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]);
void flatten(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
float FCL(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
void softmax(float inp[NUM_CLASSES], float out[NUM_CLASSES]);

void obj_detector(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]) {
#pragma HLS INTERFACE s_axilite port=return bundle=control
#pragma HLS INTERFACE m_axi port=A bundle=HP0 offset=slave
#pragma HLS INTERFACE m_axi port=W0 bundle=HP1 offset=slave
#pragma HLS INTERFACE m_axi port=W1 bundle=HP2 offset=slave
#pragma HLS INTERFACE m_axi port=res bundle=HP3 offset=slave

	float local_A[N][N];
	float local_W0[NUM_NEURONS][M][M];
	float local_W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)];
	float local_res[NUM_CLASSES];

	memcpy((float*)local_A, (const float*)A, N*N*sizeof(float));
	memcpy((float*)local_W0, (const float*)W0, NUM_NEURONS*M*M*sizeof(float));

	float s0[NUM_NEURONS][N-M+1][N-M+1];
	float s1[NUM_NEURONS][N-M+1][N-M+1];
	float s2[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2];
	float s3[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)];
	float cost[NUM_CLASSES];

	// Layer 1 - convolution
	CONV: for(int i=0; i<NUM_NEURONS; i++) {
		convolve(local_A, local_W0[i], s0[i]);
	}

	memcpy((float*)local_W1, (const float*)W1, NUM_CLASSES*NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)*sizeof(float));

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
	FCL_label:for (int i=0; i<NUM_CLASSES; i++) {
		cost[i] = FCL(s3, local_W1[i]);
	}

	// Layer 6 - Softmax
	softmax(cost, local_res);

	memcpy((float*)res, (const float*)local_res, NUM_CLASSES*sizeof(float));

}


void convolve (float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]) {
  int x,  y;
  int i,j,k,l;
  float temp;

  convolve_label5:for (i=M/2; i<N -(M/2); i++) {
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
	int j;
	float temp;
	ReLU_label1:for (int i=0; i<N-M+1; i++) {
		j=0;
		temp = inp[i][j];
		ReLU_label0:for (j=0; j<N-M+1; j++) {
			if (temp > 0) {
				out[i][j] = temp;
			} else {
				out[i][j] = 0;
			}
			if (j != (N-M))
				temp = inp[i][j+1];
		}
	}
}

float calc_fmax(float inp1, float inp2) {
	return fmax(inp1, inp2);
}

void maxpool(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]) {
	float max1, max2;
	maxpool_label6:for (int i=0; i<(N-M+1)/2; i++) {
		for (int j=0; j<(N-M+1)/2; j++) {
			max1 = calc_fmax(inp[2*i][2*j], inp[2*i][(2*j)+1]);
			max2 = calc_fmax(inp[(2*i)+1][(2*j)], inp[(2*i)+1][(2*j)+1]);
			out[i][j] = calc_fmax(max1, max2);
		}
	}
}

void flatten(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]) {
	flatten_label7:for (int i=0; i<NUM_NEURONS; i++) {
		for (int j=0; j<((N-M+1)/2); j++){
			for (int k=0; k<((N-M+1)/2); k++) {
				out[(i*((N-M+1)/2)*((N-M+1)/2)) + ((((N-M+1)/2))*j) + k] = inp[i][j][k];
			}
		}
	}
}

float calc_fmul(float inp1, float inp2) {
	return inp1*inp2;
}

float FCL(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]) {
	float out0=0, out1=0, out2=0, out3=0;
	float out4=0, out5=0, out6=0, out7=0;
	float out = 0;

	FCL_label8:for (int i=0; i<(NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)); i=i+8) {
		out0 = calc_fmul(inp[i], W[i]);
		if ((i+1) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out1 = calc_fmul(inp[i+1], W[i+1]);
		if ((i+2) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out2 = calc_fmul(inp[i+2], W[i+2]);
		if ((i+3) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out3 = calc_fmul(inp[i+3], W[i+3]);
		if ((i+4) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out4 = calc_fmul(inp[i+4], W[i+4]);
		if ((i+5) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out5 = calc_fmul(inp[i+5], W[i+5]);
		if ((i+6) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out6 = calc_fmul(inp[i+6], W[i+6]);
		if ((i+7) < (NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)))
			out7 = calc_fmul(inp[i+7], W[i+7]);
		out += out0 + out1 + out2 + out3 + out4 + out5 + out6 + out7;
	}
	return out;
}


float calc_exp(float inp) {
	return exp(inp);
}

float calc_fdiv(float inp1, float inp2) {
	return inp1/inp2;
}

void softmax(float inp[NUM_CLASSES], float out[NUM_CLASSES]) {
	float sum = 0;
		float temp[NUM_CLASSES];
		softmax_label9:for (int i=0; i<NUM_CLASSES; i++) {
			sum += inp[i];
		}
		softmax_label10:for (int i=0; i<NUM_CLASSES; i++) {
			temp[i] = calc_fdiv(inp[i], sum);
		}
		sum = 0;
		softmax_label11:for(int i=0; i<NUM_CLASSES; i++) {
			sum += calc_exp(temp[i]);
		}
		softmax_label12:for (int i=0; i<NUM_CLASSES; i++) {
			out[i] = calc_fdiv(calc_exp(temp[i]), sum);
        }
}
