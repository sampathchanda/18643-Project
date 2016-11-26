#include<stdio.h>
#include<math.h>

#define N 12
#define M 5
#define NUMBER_OF_NEURONS 3

void convolve (int A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void relu (float input_mat[N-M+1][N-M+1], float out_mat[N-M+1][N-M+1]);
void maxpool(float input_mat[N-M+1][N-M+1],	int output_mat[(N-M+1)/2][(N-M+1)/2]);
float max(float a, float b);

void feature_extractor(int A[N][N],
		float W[NUMBER_OF_NEURONS][M][M],
		int feature[NUMBER_OF_NEURONS][(N-M+1)/2][(N-M+1)/2]) {

	float C[NUMBER_OF_NEURONS][N-M+1][N-M+1];

	float S[NUMBER_OF_NEURONS][N-M+1][N-M+1];

	Convolve: for (int i = 0; i < NUMBER_OF_NEURONS; i++){
		convolve(A, W[i], C[i]);
	}

	Threshold: for (int j = 0; j < NUMBER_OF_NEURONS; j++) {
		relu(C[j], S[j]);
	}

	Pool: for (int k = 0; k < NUMBER_OF_NEURONS; k++) {
		maxpool(S[k], feature[k]);
	}
}

void convolve (int A[N][N], float B[M][M], float conv[N-M+1][N-M+1]) {
  int x,  y;

  for (int s=0; s<N-M+1; s++) {
    for (int t=0; t<N-M+1; t++) {
      conv[s][t] = 0;
    }
  }

  for (int i=M/2; i<N-(M/2); i++) {
    for (int j=M/2; j<N-(M/2); j++) {
      for (int k=0; k<M; k++) {
        for (int l=0; l<M; l++) {
          x = i-M/2 + k;
          y = j-M/2 + l;
          conv[i-M/2][j-M/2] += A[x][y] * B[k][l];
        }
      }
    }
  }
}

void relu (float input_mat[N-M+1][N-M+1], float out_mat[N-M+1][N-M+1]) {
  int exp_val = 0;

  for (int i=0; i<N-M+1; i++) {
    for (int j=0; j<N-M+1; j++) {
      out_mat[i][j] = max(0, input_mat[i][j]);
    }
  }
}

void maxpool(float input_mat[N-M+1][N-M+1],
		int output_mat[(N-M+1)/2][(N-M+1)/2]) {
  int max;

  for (int i=0; i<(N-M+1)/2; i++) {
    for (int j=0; j<(N-M+1)/2; j++) {
      max = 0;
      for (int k=0; k<2; k++) {
        for (int l=0; l<2; l++) {
          if (input_mat[i*2+k][j*2+l] > max) {
            max = input_mat[i*2+k][j*2+l];
          }
        }
      }
      output_mat[i][j] = max;
    }
  }
}

float max(float a, float b) {
#pragma HLS INLINE
	return a > b ? a : b;
}
