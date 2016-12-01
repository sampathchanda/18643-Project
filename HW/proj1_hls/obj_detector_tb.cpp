#include <iostream>
#include <cstdlib>
#include <cfloat>
#include <math.h>
#include "obj_detector.h"
#include <stdio.h>

using namespace std;

#define EPSILON (1e-4)  // do not chanage this value

void obj_detector_sw(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]);
void convolve_sw(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void ReLU_sw(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]);
void maxpool_sw(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]);
void flatten_sw(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
float FCL_sw(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
void softmax_sw(float inp[NUM_CLASSES], float out[NUM_CLASSES]);

bool nearlyEqual(float a, float b) {
  // The Floating Point Guide, http://floating-point-gui.de/errors/comparison/
  float absA = fabs(a);
  float absB = fabs(b);
  float diff = fabs(a - b);

  if (a == b) { // shortcut, handles infinities
    return true;
  } else if (a == 0 || b == 0 || diff < FLT_MIN) {
    // a or b is zero or both are extremely close to it
    // relative error is less meaningful here
    return diff < (EPSILON * FLT_MIN);
  } else { // use relative error
    return diff / fmin((absA + absB), FLT_MAX) < EPSILON;
  }
}

int main(int argc, char **argv)
{
  // doubled bufffered
  mat_a in_mat_a[N][N];
  mat_b in_mat_w0[NUM_NEURONS][M][M];
  mat_b in_mat_w1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)];
  //mat_b res[NUM_CLASSES];
  mat_conv hw_result[NUM_CLASSES], sw_result[NUM_CLASSES];

  int error_count = 0;

  int i, j, k, l, x, y;
  for(i = 0; i < N; i++) {
	  for(j = 0; j < N; j++) {
    	  //in_mat_a[i][j]=((mat_a)rand())/RAND_MAX;
    	  in_mat_a[i][j]=((mat_a)(.5));
    	  //cout << in_mat_a[i][j] << " " ;
      }
	  //cout << "\n";
    }
  for (k=0; k<NUM_NEURONS; k++) {
  	  for(i = 0; i < M; i++) {
	  	  for(j = 0; j < M; j++) {
		  	  // in_mat_b[i][j]=((mat_b)rand())/RAND_MAX;
		  	  in_mat_w0[k][i][j]= (mat_b)(.5);
    	  	  //cout << in_mat_b[i][j] << " " ;
      	  }
	  	  //cout << "\n";
    	}
  }

  for (int i=0; i<NUM_CLASSES; i++) {
	  for (int j=0; j<(NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)); j++) {
		  in_mat_w1[i][j] = (mat_b)(.5);
	  }
  }

  /*
  // Generate the expected result
  // Iterate over the rows of the A matrix
	for (i=M/2; i< N-(M/2); i++) {
		for (j=M/2; j<N-(M/2); j++) {
			for (k=0; k<M; k++) {
				for (l=0; l<M; l++) {
					x = i-M/2 + k;
					y = j-M/2 + l;
					// printf("%d %d\n", A[x][y], B[k][l]);
					sw_result[i-M/2][j-M/2] = in_mat_a[x][y] * in_mat_b[k][l];
					//cout << sw_result[i-M/2][i-M/2] << " ";
				}
			}
		}
		//cout << "\n";
	}
	*/
  obj_detector_sw(in_mat_a, in_mat_w0, in_mat_w1, sw_result);

#ifdef HW_COSIM
    // Run the Vivado HLS matrix multiplier
    obj_detector(in_mat_a, in_mat_w0, in_mat_w1, hw_result);
#endif

    // Print product matrix
    for (int i = 0; i < NUM_CLASSES; i++) {
    	//for (int j = 0; j < (N-M+1)/2; j++) {
    		//for (int k = 0; k < (N-M+1)/2; k++) {
#ifdef HW_COSIM
	// Check result of HLS vs. expected
	if (!nearlyEqual(hw_result[i], sw_result[i])) {
	  error_count++;

	  //cout << i << " , " << j << " , " << k << " -- ";
	  //cout << sw_result[i] << " vs. " << hw_result[i] << "\n";
		}
    //}
   //}

// #else

#endif
      //}
    }

#ifdef HW_COSIM
  if (error_count)
    cout << "TEST FAIL: " << error_count << " Results do not match!" << endl;
  else
    cout << "Test passed!" << endl;
#endif
  return error_count;
}

void obj_detector_sw(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]) {

	float s0[NUM_NEURONS][N-M+1][N-M+1];
	float s1[NUM_NEURONS][N-M+1][N-M+1];
	float s2[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2];
	float s3[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)];
	float cost[NUM_CLASSES];

	// Layer 1 - convolution
	for(int i=0; i<NUM_NEURONS; i++) {
		convolve_sw(A, W0[i], s0[i]);
	}

	// Layer 2 - ReLU
	for (int i=0; i<NUM_NEURONS; i++) {
		ReLU_sw(s0[i], s1[i]);
	}

	// Layer 3 - Maxpool
	for (int i=0; i<NUM_NEURONS; i++) {
		maxpool_sw(s1[i], s2[i]);
	}

	// Layer 4 - Flatten
	flatten_sw(s2, s3);

	// Layer 5 - FCL
	cost[0] = FCL_sw(s3, W1[0]);
	cost[1] = FCL_sw(s3, W1[1]);

	// Layer 6 - Softmax
	softmax_sw(cost, res);

}


void convolve_sw (float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]) {
  int x,  y;
  int i,j,k,l;

  for (i=M/2; i<N-(M/2); i++) {
    for (j=M/2; j<N-(M/2); j++) {
    	conv[i-M/2][j-M/2] = 0;
      for (k=0; k<M; k++) {
        for (l=0; l<M; l++) {
          x = i-M/2 + k;
          y = j-M/2 + l;
          // printf("%d %d\n", A[x][y], B[k][l]);
          conv[i-M/2][j-M/2] += A[x][y] * B[k][l];
          //cout << conv[i-M/2][j-M/2] << " = " << A[x][y] << " * " << B[k][l] << "\n";
        }
      }
    }
  }
}

void ReLU_sw(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]) {
	for (int i=0; i<N-M+1; i++) {
		for (int j=0; j<N-M+1; j++) {
			//out[i][j] = fmax(0, inp[i][j]);
			if (inp[i][j] > 0) {
				out[i][j] = inp[i][j];
			}
			else {
				out[i][j] = 0;
			}
			//cout << inp[i][j] << " vs. " << out[i][j] << "\n";
		}
	}
}

void maxpool_sw(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]) {
	float max;
	for (int i=0; i<(N-M+1)/2; i++) {
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
			//cout << max << " -- " << inp[(2*i)][(2*j)] << " " << inp[(2*i)+1][(2*j)+1] << " " << inp[(2*i)+1][2*j] << " " << inp[(2*i)+1][(2*j)+1] << "\n";
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

void flatten_sw(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]) {
	for (int i=0; i<NUM_NEURONS; i++) {
		for (int j=0; j<((N-M+1)/2); j++){
			for (int k=0; k<((N-M+1)/2); k++) {
				out[(i*((N-M+1)/2)*((N-M+1)/2)) + ((((N-M+1)/2))*j) + k] = inp[i][j][k];
			}
		}
	}
}

float FCL_sw(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]) {
	float out = 0;
	for (int i=0; i<(NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)); i++) {
		out += inp[i]*W[i];
		//cout << out << " = " << inp[i] << " * " << W[i] << "\n";
	}
	return out;
}

void softmax_sw(float inp[NUM_CLASSES], float out[NUM_CLASSES]) {
	float sum = 0;
	float temp[NUM_CLASSES];
	for (int i=0; i<NUM_CLASSES; i++) {
		sum += inp[i];
	}
	for (int i=0; i<NUM_CLASSES; i++) {
		temp[i] = inp[i]/sum;
	}
	sum = 0;
	for(int i=0; i<NUM_CLASSES; i++) {
		sum += exp(temp[i]);
	}
	for (int i=0; i<NUM_CLASSES; i++) {
		out[i] = exp(temp[i])/sum;
	}
}
