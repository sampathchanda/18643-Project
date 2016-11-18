#include<stdio.h>
#include<math.h>

#define N 6
#define M 3

void mm_init(float A[N][N], float W0[M][M], float W1[M][M], float W2[M][M], float W3[M][M], float W4[M][M], float W5[M][M]);
void convolve (float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void sigmoid (float inp_mat[N-M+1][N-M+1], float out_mat[N-M+1][N-M+1]);
void maxpool (float inp_mat[N-M+1][N-M+1], float out_mat[(N-M+1)/2][(N-M+1)/2]);
void print_result (float res[N-M+1][N-M+1]);
void print_result1 (float res[(N-M+1)/2][(N-M+1)/2]);
void scan_weights();
void print_weights(float W[M][M]);
void scan(FILE *fp, float W[M][M]);

int main() {
 
  float A[N][N];
  float B[M][M];
  float S1_0[N-M+1][N-M+1];
  float S1_1[N-M+1][N-M+1];
  float S1_2[N-M+1][N-M+1];
  float S1_3[N-M+1][N-M+1];
  float S1_4[N-M+1][N-M+1];
  float S1_5[N-M+1][N-M+1];
  float S2_0[N-M+1][N-M+1];
  float S2_1[N-M+1][N-M+1];
  float S2_2[N-M+1][N-M+1];
  float S2_3[N-M+1][N-M+1];
  float S2_4[N-M+1][N-M+1];
  float S2_5[N-M+1][N-M+1];
  float S3_0[(N-M+1)/2][(N-M+1)/2];
  float S3_1[(N-M+1)/2][(N-M+1)/2];
  float S3_2[(N-M+1)/2][(N-M+1)/2];
  float S3_3[(N-M+1)/2][(N-M+1)/2];
  float S3_4[(N-M+1)/2][(N-M+1)/2];
  float S3_5[(N-M+1)/2][(N-M+1)/2];
  float W0[M][M];
  float W1[M][M];
  float W2[M][M];
  float W3[M][M];
  float W4[M][M];
  float W5[M][M];

  mm_init(A, W0, W1, W2, W3, W4, W5);

  FILE *fp;
  fp = fopen("weights.txt", "r+");

  // Scanning input weights
  fscanf(fp, "[");
  scan(fp, W0);
  fscanf(fp, "\n");
  scan(fp, W1);
  fscanf(fp, "\n");
  scan(fp, W2);
  fscanf(fp, "\n");
  scan(fp, W3);
  fscanf(fp, "\n");
  scan(fp, W4);
  fscanf(fp, "\n");
  scan(fp, W5);

  // Layer 1 - Convoluation
  convolve(A, W0, S1_0);
  convolve(A, W1, S1_1);
  convolve(A, W2, S1_2);
  convolve(A, W3, S1_3);
  convolve(A, W4, S1_4);
  convolve(A, W5, S1_5);

  // Layer 2 - Sigmoid
  sigmoid(S1_0, S2_0);
  sigmoid(S1_1, S2_1);
  sigmoid(S1_2, S2_2);
  sigmoid(S1_3, S2_3);
  sigmoid(S1_4, S2_4);
  sigmoid(S1_5, S2_5);

  // Layer 3 - Max pool
  maxpool(S2_0, S3_0);
  maxpool(S2_1, S3_1);
  maxpool(S2_2, S3_2);
  maxpool(S2_3, S3_3);
  maxpool(S2_4, S3_4);
  maxpool(S2_5, S3_5);

  print_result(S2_0);
  print_result1(S3_0);
}

void mm_init(float A[N][N], float W0[M][M], float W1[M][M], float W2[M][M], float W3[M][M], float W4[M][M], float W5[M][M]) {
  for (int i=0; i<N; i++) {
    for (int j=0; j<N; j++) {
      A[i][j] = j;
    }
  }
  for (int i=0; i<M; i++) {
    for (int j=0; j<M; j++) {
      W0[i][j] = j;
      W1[i][j] = j;
      W2[i][j] = j;
      W3[i][j] = j;
      W4[i][j] = j;
      W5[i][j] = j;
    }
  }
}

void convolve (float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]) {
  // int convolve[N-M+1][N-M+1];
  int x,  y;

  for (int i=0; i<N-M+1; i++) {
    for (int j=0; j<N-M+1; j++) {
      conv[i][j] = 0;
    }
  }
  for (int i=M/2; i<N-(M/2); i++) {
    for (int j=M/2; j<N-(M/2); j++) {
      for (int k=0; k<M; k++) {
        for (int l=0; l<M; l++) {
          x = i-M/2 + k;
          y = j-M/2 + l;
          // printf("%d %d\n", A[x][y], B[k][l]);
          conv[i-M/2][j-M/2] += A[x][y] * B[k][l];
        }
      }
    }
  }
}

void sigmoid (float inp_mat[N-M+1][N-M+1], float out_mat[N-M+1][N-M+1]) {
  int exp_val = 0;

  for (int i=0; i<N-M+1; i++) {
    for (int j=0; j<N-M+1; j++) {
      exp_val = exp(-inp_mat[i][j]);
      out_mat[i][j] = 1 / (1+exp_val);
    }
  }
}

void maxpool(float inp_mat[N-M+1][N-M+1], float out_mat[(N-M+1)/2][(N-M+1)/2]) {
  int max;

  for (int i=0; i<(N-M+1)/2; i++) {
    for (int j=0; j<(N-M+1)/2; j++) {
      out_mat[i][j] = 0;
    }
  }

  for (int i=0; i<(N-M+1)/2; i++) {
    for (int j=0; j<(N-M+1)/2; j++) {
      max = 0;
      for (int k=2*i; k<2*i+1; k++) {
        for (int l=2*j; l<2*j+1; l++) {
          if (inp_mat[k][l] > max) {
            max = inp_mat[k][l];
          }
        }
      }
      out_mat[i][j] = max;
      // printf("%d %d %d\n", inp_mat[i][j], max, out_mat[i][j]);
    }
  }
}

void print_result(float res[N-M+1][N-M+1]) {

  for (int i=0; i<N-M+1; i++) {
    for (int j=0; j<N-M+1; j++) {
      printf("%f ", res[i][j]);
    }
    printf("\n");
  }
}
void print_result1(float res[(N-M+1)/2][(N-M+1)/2]) {

  for (int i=0; i<(N-M+1)/2; i++) {
    for (int j=0; j<(N-M+1)/2; j++) {
      printf("%f ", res[i][j]);
    }
    printf("\n");
  }
}

void print (float W[M][M]) {
  for (int i=0; i<M; i++) {
    for (int j=0; j<M; j++) {
      printf("%f", W[M][M]);
    }
  }
}

void scan (FILE *fp, float W[M][M]) {
  fscanf(fp, "[[");
  for (int i=0; i<M; i++) {
    for (int j=0; j<M; j++) {
      fscanf(fp, "%f", &W[i][j]);
      if (j != M-1) {
        fscanf(fp, " ");
      }
    }
    fscanf(fp, "]");
    if (i != M-1) {
      fscanf(fp, "\n[");
    }
  }
  fscanf(fp, "]");
}
