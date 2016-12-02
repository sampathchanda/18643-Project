#include <xparameters.h>
#include <xaxicdma.h>
#include <xil_cache.h>
#include <xobj_detector.h>
#include <cstdio>
#include <cstdlib>
#include <cfloat>
#include <cmath>
#include <limits.h>
#include "ff.h"
#include "xstatus.h"
#include "diskio.h"
#include "main.h"
#include "xtime_l.h"


#define CDMA_A_ID XPAR_HIER_BRAM_0_AXI_CDMA_0_DEVICE_ID
#define CDMA_A_BASE XPAR_HIER_BRAM_0_AXI_CDMA_0_BASEADDR

#define CDMA_W0_ID XPAR_HIER_BRAM_1_AXI_CDMA_0_DEVICE_ID
#define CDMA_W0_BASE XPAR_HIER_BRAM_1_AXI_CDMA_0_BASEADDR

#define CDMA_W1_ID XPAR_HIER_BRAM_2_AXI_CDMA_0_DEVICE_ID
#define CDMA_W1_BASE XPAR_HIER_BRAM_2_AXI_CDMA_0_BASEADDR

#define CDMA_RES_ID XPAR_HIER_BRAM_3_AXI_CDMA_0_DEVICE_ID
#define CDMA_RES_BASE XPAR_HIER_BRAM_3_AXI_CDMA_0_BASEADDR

#define OBJ_DETECTOR_ID XPAR_OBJ_DETECTOR_0_DEVICE_ID

#define BRAM_A_ID 0xC0000000
#define BRAM_W0_ID 0xC2000000
#define BRAM_W1_ID 0xC4000000
#define BRAM_RES_ID 0xC6000000

#define CLOCKS_PER_SEC (XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ/2)
//CPU 32-bit timer (SCUTIMER) clocked at half the CPU frequency
unsigned int * const TIMER_LOAD_PTR = (unsigned int *)XPAR_PS7_SCUTIMER_0_BASEADDR;
unsigned int * const TIMER_PTR = XPAR_PS7_SCUTIMER_0_BASEADDR + (unsigned int *)0x04;
unsigned int * const TIMER_CONFIG_PTR = XPAR_PS7_SCUTIMER_0_BASEADDR + (unsigned int *)0x08;


void obj_detector_sw(float A[N][N], float W0[NUM_NEURONS][M][M], float W1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float res[NUM_CLASSES]);
void convolve_sw(float A[N][N], float B[M][M], float conv[N-M+1][N-M+1]);
void ReLU_sw(float inp[N-M+1][N-M+1], float out[N-M+1][N-M+1]);
void maxpool_sw(float inp[N-M+1][N-M+1], float out[(N-M+1)/2][(N-M+1)/2]);
void flatten_sw(float inp[NUM_NEURONS][(N-M+1)/2][(N-M+1)/2], float out[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
float FCL_sw(float inp[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)], float W[NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)]);
void softmax_sw(float inp[NUM_CLASSES], float out[NUM_CLASSES]);

//double buffered
float in_mat_a[N][N];
mat_conv hw_result[NUM_CLASSES], sw_result[NUM_CLASSES];

//devices and configuration pointers for CDMA IPs used to transfer data to/from DRAM and BRAM
XAxiCdma		 cdma_dev_a;
XAxiCdma_Config *cdma_config_a;
XAxiCdma		 cdma_dev_w0;
XAxiCdma_Config *cdma_config_w0;
XAxiCdma		 cdma_dev_w1;
XAxiCdma_Config *cdma_config_w1;
XAxiCdma		 cdma_dev_res;
XAxiCdma_Config *cdma_config_res;

//device and configuration pointer for the Lab 2 matrix mult HLS IP
XObj_detector		 obj_detector_dev;
XObj_detector_Config *obj_detector_config;

// Descriptors for reading SD card
FATFS FS_Instance;
FIL images;
FIL labels;

#define EPSILON (1e-4)  // do not chanage this value

#define IMAGES_HEADER_BYTES 16
#define LABELS_HEADER_BYTES 8
#define IMAGE_BYTES 28*28
#define LABEL_BYTES 1

XTime xtime;
XTime x1;
XTime x2;

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

int main() {

  printf("\nBegin Object detection\n");
  int error_count = 0;
  char buff[N*N];

//  float in_mat_w0[NUM_NEURONS][M][M];
//  float in_mat_w1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)];

//  for(int i = 0; i < NUM_NEURONS; i++) {
//	  for(int j = 0; j < NUM_NEURONS; j++) {
//		  for(int k = 0; k < NUM_NEURONS; k++) {
//			  in_mat_w0[i][j][k] = 1;
//		  }
//	  }
//  }
//
//  for(int i = 0; i < NUM_CLASSES; i++) {
//	  for(int j = 0; j < NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2); j++) {
//		  in_mat_w1[i][j] = 1;
//	  }
//  }

  initialize(error_count); // initialize timer and IPs

  if (error_count) return XST_FAILURE;

  // same image as in cosim
//  float image[N*N] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,52,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,169,250,251,31,0,0,0,0,0,0,0,19,134,248,248,248,174,0,0,0,0,0,0,0,0,0,0,169,253,253,210,18,0,0,0,0,0,0,78,200,253,253,253,253,253,118,0,0,0,0,0,0,0,0,116,253,253,210,25,0,0,0,0,0,25,198,248,253,253,253,253,253,253,123,0,0,0,0,0,0,0,0,125,253,253,32,0,0,0,0,0,176,234,253,253,253,173,25,43,253,253,123,0,0,0,0,0,0,0,0,171,253,213,12,0,0,0,76,128,246,253,253,189,141,12,0,20,253,253,123,0,0,0,0,0,0,0,0,255,253,142,0,0,0,117,247,253,253,233,141,12,0,0,0,20,253,253,166,0,0,0,0,0,0,0,0,255,253,176,6,122,209,247,253,253,159,35,0,0,0,0,0,20,253,253,253,0,0,0,0,0,0,0,0,150,253,253,206,248,253,253,231,144,12,0,0,0,0,0,0,20,253,253,253,0,0,0,0,0,0,0,0,93,218,253,253,253,253,198,63,0,0,0,0,0,0,0,0,5,168,253,253,0,0,0,0,0,0,0,0,0,30,122,140,65,65,10,0,0,0,0,0,0,0,0,0,0,143,253,155,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,166,253,123,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,253,253,123,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,253,249,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,37,253,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,253,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,253,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,253,117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,147,253,117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,123,57,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
//
//  for(int i = 0; i < N; i++) {
//	  for(int j = 0; j < N; j++) {
//    	  //in_mat_a[i][j]=((mat_a)rand())/RAND_MAX;
//    	  in_mat_a[i][j]=image[i * N + j];
//    	  //cout << in_mat_a[i][j] << " " ;
//      }
//	  //cout << "\n";
//  }

  // Reading from SD card
  initialize_sdcard();

  Xil_DCacheFlush(); // Flush the initialized matrices from the CPU cache to DRAM

  XAxiCdma_SimpleTransfer(&cdma_dev_w0, (u32)(in_mat_w0), (u32)(BRAM_W0_ID), NUM_NEURONS*M*M*sizeof(float), NULL, NULL);
  XAxiCdma_SimpleTransfer(&cdma_dev_w1, (u32)(in_mat_w1), (u32)(BRAM_W1_ID), NUM_CLASSES*NUM_NEURONS*(N-M+1)*(N-M+1)*sizeof(float), NULL, NULL);
  while (XAxiCdma_IsBusy(&cdma_dev_w0) || (XAxiCdma_IsBusy(&cdma_dev_w1)));

  XTime_SetTime(0);
  for(int i = 0; i < 10; i++) {

	  // Reading out header
	  sdcard_read(&images, buff, IMAGES_HEADER_BYTES);

	  // Reading an image
	  sdcard_read(&images, buff, IMAGE_BYTES);

	  for(int j = 0; j < N; j++) {
		  for(int k = 0; k < N; k++) {
			  in_mat_a[i][j] = buff[j * N + k];
		  }
	  }

	  Xil_DCacheFlush(); // Flush the initialized matrices from the CPU cache to DRAM
	  // The CDMA IPs are connected through incoherent ports to main memory

  	  // Run the Vivado HLS matrix multiplier
  	  obj_detector(in_mat_a, in_mat_w0, in_mat_w1, hw_result);
  }
  XTime_GetTime(&xtime);
  float elapsed_time = ((double)(xtime)/CLOCKS_PER_SEC);
  printf("execution time for 10 images = %f\n", elapsed_time);

  Xil_DCacheInvalidate();
  float res[2];

  XTime_GetTime(&x1);
  elapsed_time = ((double)(x1)/CLOCKS_PER_SEC);
  obj_detector_sw(in_mat_a, in_mat_w0, in_mat_w1, res);
  XTime_GetTime(&x2);
  elapsed_time = ((double)(x2)/CLOCKS_PER_SEC) - elapsed_time;
  printf("execution time for 10 images = %f\n", elapsed_time);

}

void obj_detector(
		 float a[N][N],
		 float w0[NUM_NEURONS][M][M],
		 float w1[NUM_CLASSES][NUM_NEURONS*((N-M+1)/2)*((N-M+1)/2)],
		 float res[NUM_CLASSES]
		)
{

	// Transfer the a and b matrices from DRAM to BRAM
	// Pointer arithmatic and indexing done here for transfers
	XAxiCdma_SimpleTransfer(&cdma_dev_a, (u32)(a), (u32)(BRAM_A_ID), N*N*sizeof(float), NULL, NULL);
	while (XAxiCdma_IsBusy(&cdma_dev_a));

	// Issue Start signal to the Matrix Mult IP
	XObj_detector_Start(&obj_detector_dev);
	// Spin check the Done signal from the Matrix Mult IP
	while (!XObj_detector_IsDone(&obj_detector_dev));

	// Transfer the product matrix from BRAM to DRAM
	XAxiCdma_SimpleTransfer(&cdma_dev_res, (u32)(BRAM_RES_ID), (u32)(res), (NUM_CLASSES)*sizeof(float), NULL, NULL);
	while (XAxiCdma_IsBusy(&cdma_dev_res));
	Xil_DCacheInvalidateRange((u32)(res),(NUM_CLASSES)*sizeof(float));
	printf("%f %f\n", res[0], res[1]);
}

bool nearlyEqual(float a, float b) {
  // The Floating Point Guide, http://floating-point-gui.de/errors/comparison/
  float absA = abs(a);
  float absB = abs(b);
  float diff = abs(a - b);

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

void initialize(int &error) {
    *TIMER_CONFIG_PTR = 0x00000003;
	*TIMER_PTR = UINT_MAX; //count down from max amount

	obj_detector_config = XObj_detector_LookupConfig(OBJ_DETECTOR_ID);
	int status = XObj_detector_CfgInitialize(&obj_detector_dev,obj_detector_config);
	if(status !=XST_SUCCESS){
		printf("ERROR: Obj_detector Setup Failed\n");
		error++;
	}

	cdma_config_a = XAxiCdma_LookupConfig(CDMA_A_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_a,cdma_config_a,CDMA_A_BASE);

	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA A Setup Failed\n");
		error++;
	}
	cdma_config_w0 = XAxiCdma_LookupConfig(CDMA_W0_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_w0,cdma_config_w0,CDMA_W0_BASE);
	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA W0 Setup Failed\n");
		error++;
	}
	cdma_config_w1 = XAxiCdma_LookupConfig(CDMA_W1_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_w1,cdma_config_w1,CDMA_W1_BASE);
	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA W1 Setup Failed\n");
		error++;
	}
	cdma_config_res = XAxiCdma_LookupConfig(CDMA_RES_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_res,cdma_config_res,CDMA_RES_BASE);
	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA RES Setup Failed\n");
		error++;
	}

}

int initialize_sdcard() {
	FRESULT result;

	//DSTATUS init_status;
	//init_status = disk_status(0);
	  //printf("Status: %d\n", init_status);

	  //init_status = disk_initialize(0);
	  //if ((init_status)) {
		//  printf("Error: Disk initialization failed: %d\n", init_status);
		 // return XST_FAILURE;
	  //}

	result = f_mount(&FS_Instance, "0:/", 0);
	if (result != 0) {
		printf("Error: f_mount returned %d\n", result);
		return XST_FAILURE;
	}

	result = f_open(&images, "images.bin", FA_READ);
	if (result != 0) {
		printf("Error: f_open returned %d while trying to open images\n", result);
		return XST_FAILURE;
	}

	result = f_open(&labels, "labels.bin", FA_READ);
	if (result != 0) {
		printf("Error: f_open returned %d while trying to open labels\n", result);
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
