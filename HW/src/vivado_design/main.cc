#include <xparameters.h>
//#include <xaxicdma.h>
#include <xil_cache.h>
#include <xobj_detector.h>
#include <stdio.h>
#include <cstdio>
#include <cstdlib>
#include <cfloat>
#include <cmath>
#include <limits.h>
#include "ff.h"
#include "xstatus.h"
#include "diskio.h"
#include "main.h"
#include <xtime_l.h>

void obj_detector_sw(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]);
void convolve_sw(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void ReLU_sw(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]);
void maxpool_sw(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]);
void flatten_sw(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
float FCL_sw(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
void softmax_sw(float inp[NUM_CLASSES], float out[NUM_CLASSES]);
int sdcard_read(FIL *file, void *buff, UINT num_bytes);
int close_sdcard();

#define OBJ_DETECTOR_ID XPAR_XOBJ_DETECTOR_0_DEVICE_ID

#define CLOCKS_PER_SEC (XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ/2)
//CPU 32-bit timer (SCUTIMER) clocked at half the CPU frequency
unsigned int * const TIMER_LOAD_PTR = (unsigned int *)XPAR_PS7_SCUTIMER_0_BASEADDR;
unsigned int * const TIMER_PTR = XPAR_PS7_SCUTIMER_0_BASEADDR + (unsigned int *)0x04;
unsigned int * const TIMER_CONFIG_PTR = XPAR_PS7_SCUTIMER_0_BASEADDR + (unsigned int *)0x08;

//double buffered
float in_mat_a[N][N];
mat_conv hw_result[NUM_CLASSES], sw_result[NUM_CLASSES];
int hw_pred, sw_pred;

//device and configuration pointer for the Lab 2 matrix mult HLS IP
XObj_detector		 obj_detector_dev;
XObj_detector_Config *obj_detector_config;

// Descriptors for reading SD card
FATFS FS_Instance;
FIL images_hw;
FIL labels_hw;
FIL images_sw;
FIL labels_sw;

#define EPSILON (1e-4)  // do not chanage this value

#define IMAGES_HEADER_BYTES 16
#define LABELS_HEADER_BYTES 8
#define IMAGE_BYTES 28*28
#define LABEL_BYTES 1

bool nearlyEqual(float a, float b);
void initialize(int &error);
int initialize_sdcard();
int sdcard_read(FIL *file, void *buff, UINT num_bytes);

void obj_detector(
		 float a[N][N],
		 float w0[NUM_NEURONS][M][M],
		 float w1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)],
		 float res[NUM_CLASSES]
		 );

XTime xtime1;
XTime xtime2;

int target = 0;

int main() {

  printf("\nBegin Object detection\n");
  int error_count = 0;
  int error_count_sw = 0;
  char buff_img[N*N];
  char buff_lbl[LABEL_BYTES];
  int gnd_truth;

  initialize(error_count); // initialize timer and IPs

  if (error_count) return XST_FAILURE;

  XObj_detector_Set_W0(&obj_detector_dev, (u32)in_mat_w0);
  XObj_detector_Set_W1(&obj_detector_dev, (u32)in_mat_w1);
  XObj_detector_Set_res(&obj_detector_dev, (u32)hw_result);

  float totalTimeHW = 0;
  float totalTimeSW = 0;

  char buff_img_header[IMAGES_HEADER_BYTES];
  char buff_lbl_header[LABELS_HEADER_BYTES];

  target =0;
    
    // Reading from SD card
    initialize_sdcard();

	// Reading out header for images file
	sdcard_read(&images_sw, buff_img_header, IMAGES_HEADER_BYTES);

	// Reading out header for labels file
	sdcard_read(&labels_sw, buff_lbl_header, LABELS_HEADER_BYTES);

    for (int i=0; i<10000; i++) {
  	  // Reading an image
  	  sdcard_read(&images_sw, buff_img, IMAGE_BYTES);

  	  for(int m = 0; m < N; m++) {
  		  for(int n = 0; n < N; n++) {
  			  in_mat_a[m][n]=(float)buff_img[m*N + n];
  		  }
  	  }

  	  // Reading corresponding label
      sdcard_read(&labels_sw, buff_lbl, LABEL_BYTES);

  	  // Software
  	  XTime_SetTime(0);
  	  obj_detector_sw(in_mat_a, in_mat_w0, in_mat_w1, sw_result);
  	  XTime_GetTime(&xtime2);
  	  totalTimeSW += xtime2/(float)CLOCKS_PER_SEC;

        sw_pred = (sw_result[0] >= sw_result[1]) ? 0 : 1;
        gnd_truth = (int)buff_lbl[0];

        if ((gnd_truth == 0) || (gnd_truth == 1)) {
      	  target++;
        	  if (sw_pred != gnd_truth) {
        		  //printf("%f %f\n", hw_result[0], hw_result[1]);
        		  //printf("%d vs %d\n", hw_pred, sw_pred);
        		  error_count_sw++;
        	  }
        }
    }
    printf("SW time: %f\n", totalTimeSW);

    if (error_count)
      printf("PREDICTION ACCURACY SW: %d Results do not match out of %d!\n", error_count, target);

    // Reading out header for images file
    sdcard_read(&images_sw, buff_img_header, IMAGES_HEADER_BYTES);
    
    // Reading out header for labels file
    sdcard_read(&labels_sw, buff_lbl_header, LABELS_HEADER_BYTES);
    
    for (int i=0; i<10000; i++) {
        // Reading an image
        sdcard_read(&images_sw, buff_img, IMAGE_BYTES);
        
        for(int m = 0; m < N; m++) {
            for(int n = 0; n < N; n++) {
                in_mat_a[m][n]=(float)buff_img[m*N + n];
            }
        }
        
        // Reading corresponding label
        sdcard_read(&labels_sw, buff_lbl, LABEL_BYTES);
        
        XObj_detector_Set_A (&obj_detector_dev, (u32)in_mat_a);

  	  Xil_DCacheFlush(); // Flush the initialized matrices from the CPU cache to DRAM

  	  // Hardware
  	  XTime_SetTime(0);
  	  obj_detector(in_mat_a, in_mat_w0, in_mat_w1, hw_result);
  	  XTime_GetTime(&xtime1);
  	  totalTimeHW += xtime1/(float)CLOCKS_PER_SEC;


      Xil_DCacheInvalidateRange((u32)(hw_result),(N-M+1)*(N-M+1)*sizeof(float));

      hw_pred = (hw_result[0] >= hw_result[1]) ? 0 : 1;
      gnd_truth = (int)buff_lbl[0];

      if ((gnd_truth == 0) || (gnd_truth == 1)) {
    	  target++;
      	  if (hw_pred != gnd_truth) {
      		  //printf("%f %f\n", hw_result[0], hw_result[1]);
      		  //printf("%d vs %d\n", hw_pred, sw_pred);
      		  error_count++;
      	  }
      }
  }
  printf("HW time: %f\n", totalTimeHW);

  if (error_count)
    printf("PREDICTION ACCURACY HW: %d Results do not match out of %d!\n", error_count, target);


  return error_count;
}

void obj_detector(
		 float a[N][N],
		 float w0[NUM_NEURONS][M][M],
		 float w1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)],
		 float res[NUM_CLASSES]
		)
{

	// Issue Start signal to the Matrix Mult IP
	XObj_detector_Start(&obj_detector_dev);
	// Spin check the Done signal from the Matrix Mult IP
	while (!XObj_detector_IsDone(&obj_detector_dev));
}

void initialize(int &error) {
    *TIMER_CONFIG_PTR = 0x00000003;
	*TIMER_PTR = UINT_MAX; //count down from max amount

	obj_detector_config = XObj_detector_LookupConfig(OBJ_DETECTOR_ID);
	int status = XObj_detector_CfgInitialize(&obj_detector_dev,obj_detector_config);
	if(status !=XST_SUCCESS){
		printf("ERROR: Obj_detector Setup Failed\n");
		error++;
	}
}

int initialize_sdcard() {
	FRESULT result;
	//char buff_img_header[IMAGES_HEADER_BYTES];
	//char buff_lbl_header[LABELS_HEADER_BYTES];

	result = f_mount(&FS_Instance, "0:/", 0);
	if (result != 0) {
		printf("Error: f_mount returned %d\n", result);
		return XST_FAILURE;
	}

	result = f_open(&images_hw, "imgte.bin", FA_READ);
	if (result != 0) {
		printf("Error: f_open returned %d while trying to open images\n", result);
		return XST_FAILURE;
	}

	result = f_open(&labels_hw, "lblte.bin", FA_READ);
	if (result != 0) {
		printf("Error: f_open returned %d while trying to open labels\n", result);
		return XST_FAILURE;
	}

	result = f_open(&images_sw, "imgte.bin", FA_READ);
	if (result != 0) {
		printf("Error: f_open returned %d while trying to open images\n", result);
		return XST_FAILURE;
	}

	result = f_open(&labels_sw, "lblte.bin", FA_READ);
	if (result != 0) {
		printf("Error: f_open returned %d while trying to open labels\n", result);
		return XST_FAILURE;
	}

	return 0;
}

int close_sdcard() {
	int result;
	result = f_close(&images_sw);
	if (result != 0) {
		printf("Error: f_close returned %d while trying to close images\n", result);
		return XST_FAILURE;
	}

	result = f_close(&labels_sw);
	if (result != 0) {
		printf("Error: f_close returned %d while trying to close labels\n", result);
		return XST_FAILURE;
	}
    result = f_close(&images_hw);
    if (result != 0) {
        printf("Error: f_close returned %d while trying to close images\n", result);
        return XST_FAILURE;
    }
    
    result = f_close(&labels_hw);
    if (result != 0) {
        printf("Error: f_close returned %d while trying to close labels\n", result);
        return XST_FAILURE;
    }
    
    return 0;
}

int sdcard_read(FIL *file, void *buff, UINT num_bytes) {
	int result;
	UINT bytes_read;

	result = f_read(file, buff, num_bytes, &bytes_read);
	if (result) {
		printf("Error: SDCard read failed with error code: %d\n", result);
		return XST_FAILURE;
	}

	if (num_bytes != bytes_read) {
		printf("Number of bytes to read and bytes read don't match. %d vs %d\n", num_bytes, bytes_read);
		return XST_FAILURE;
	}
	return 0;

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
          conv[i-M/2][j-M/2] += A[x][y] * B[k][l];
        }
      }
    }
  }
}

void ReLU_sw(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]) {
  for (int i=0; i<N-M+1; i++) {
    for (int j=0; j<N-M+1; j++) {
      out[i][j] = fmax(0, inp[i][j]);
      if (inp[i][j] > 0) {
        out[i][j] = inp[i][j];
      }
      else {
        out[i][j] = 0;
      }
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
