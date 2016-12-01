#include <xparameters.h>
#include <xaxicdma.h>
#include <xil_cache.h>
#include <xmatrix_mult.h>
#include <cstdio>
#include <cstdlib>
#include <cfloat>
#include <cmath>
#include <limits.h>
#include "main.h"
#include "xtime_l.h"


#define CDMA_A_ID XPAR_HIER_BRAM_0_AXI_CDMA_0_DEVICE_ID
#define CDMA_A_BASE XPAR_HIER_BRAM_0_AXI_CDMA_0_BASEADDR

#define CDMA_B_ID XPAR_HIER_BRAM_1_AXI_CDMA_0_DEVICE_ID
#define CDMA_B_BASE XPAR_HIER_BRAM_1_AXI_CDMA_0_BASEADDR

#define CDMA_PROD_ID XPAR_HIER_BRAM_2_AXI_CDMA_0_DEVICE_ID
#define CDMA_PROD_BASE XPAR_HIER_BRAM_2_AXI_CDMA_0_BASEADDR

#define MATRIX_MULT_ID XPAR_MATRIX_MULT_0_DEVICE_ID

#define BRAM_A_ID 0xC0000000
#define BRAM_B_ID 0xC2000000
#define BRAM_PROD_ID 0xC4000000

#define CLOCKS_PER_SEC (XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ/2)
//CPU 32-bit timer (SCUTIMER) clocked at half the CPU frequency
//unsigned int * const TIMER_LOAD_PTR = (unsigned int *)XPAR_XSDPS_0_BASEADDR;
//unsigned int * const TIMER_PTR = XPAR_XSDPS_0_BASEADDR + (unsigned int *)0x08;
//unsigned int * const TIMER_CONFIG_PTR = XPAR_XSDPS_0_BASEADDR + (unsigned int *)0x10;

XTime  *xtime;

//double buffered
mat_a in_mat_a[2][N][N];
mat_b in_mat_b[2][N][N];
mat_prod hw_result[2][N][N], sw_result[2][N][N];
mat_prod temp[M][M];

//devices and configuration pointers for CDMA IPs used to transfer data to/from DRAM and BRAM
XAxiCdma		 cdma_dev_a;
XAxiCdma_Config *cdma_config_a;
XAxiCdma		 cdma_dev_b;
XAxiCdma_Config *cdma_config_b;
XAxiCdma		 cdma_dev_prod;
XAxiCdma_Config *cdma_config_prod;

//device and configuration pointer for the Lab 2 matrix mult HLS IP
XMatrix_mult		 matrix_mult_dev;
XMatrix_mult_Config *matrix_mult_config;

#define EPSILON (1e-4)  // do not chanage this value

bool nearlyEqual(float a, float b);
void initialize(int &error);

double matrix_mult(
		 mat_a a[2][IN_A_ROWS][IN_A_COLS],
		 mat_b b[2][IN_B_ROWS][IN_B_COLS],
		 mat_prod prod[2][IN_A_ROWS][IN_B_COLS],
		 int phase);

int main() {
  printf("\nBegin Matrix Multiplication\n");
  int error_count = 0;

  double total_execution_time = 0;

  initialize(error_count); // initialize timer and IPs

  if (error_count) return XST_FAILURE;

  //for(int loop = 0; loop < 16; ++loop) {
  // Initialize the input matrices with random values
  //printf("loop %d\n", loop + 1);
  for(int phase = 0; phase < 2; phase++) {
	int i,j;
	for(i = 0; i < IN_A_ROWS; i++) {
	  for(j = 0; j < IN_A_COLS; j++) {
	in_mat_a[phase][i][j]=((float)rand())/RAND_MAX;
	  }
	}
	for(i = 0; i < IN_B_ROWS; i++) {
	  for(j = 0; j < IN_B_COLS; j++) {
	in_mat_b[phase][i][j]=((float)rand())/RAND_MAX;
	  }
	}
  }

  printf("software multiplication\n");

  // Generate the expected result
  // Iterate over the rows of the A matrix
  for(int phase = 0; phase < 2; phase++) {
	for(int i = 0; i < IN_A_ROWS; i++) {
	  for(int j = 0; j < IN_B_COLS; j++) {
	// Iterate over the columns of the B matrix
	sw_result[phase][i][j] = 0;
	// Do the inner product of a row of A and col of B
	for(int k = 0; k < IN_B_ROWS; k++) {
	  sw_result[phase][i][j] += in_mat_a[phase][i][k] * in_mat_b[phase][k][j];
	}
	  }
	}
  }
  printf("Software Over\n");

  for(int loop = 0; loop < 1; ++loop) {
	  double elapsed_time = 0;
	  for(int phase = 0; phase < 2; ++phase) {
		  for(int i = 0; i < IN_A_ROWS; ++i) {
			  for(int j = 0; j < IN_B_COLS; ++j){
				  hw_result[phase][i][j] = 0;
			  }
		  }
	  }
	  *xtime=0;
	  XTime_SetTime(*xtime);
	  Xil_DCacheFlush(); // Flush the initialized matrices from the CPU cache to DRAM
	  // The CDMA IPs are connected through incoherent ports to main memory
  for(int phase = 0; phase < 2; phase++) {
    // Run the Vivado HLS matrix multiplier
	  //unsigned int end = 0;

	 // *TIMER_CONFIG_PTR = 0x00000003;
	 // *TIMER_PTR = UINT_MAX;

    total_execution_time += matrix_mult(in_mat_a, in_mat_b, hw_result, phase);
      //end = *TIMER_PTR;
    XTime_GetTime(xtime);
      elapsed_time += ((double)(*xtime)/CLOCKS_PER_SEC);


    Xil_DCacheFlush(); // Flush the initialized matrices from the CPU cache to DRAM
    // Print product matrix
    for (int i = 0; i < IN_A_ROWS; i++) {
      for (int j = 0; j < IN_B_COLS; j++) {
	// Check result of HLS vs expected
	if (!nearlyEqual(hw_result[phase][i][j], sw_result[phase][i][j])) {
	  printf("Phase: %d\tRes[%d][%d]\tHW: %0.2f\tSW: %0.2f\n",phase,i,j,hw_result[phase][i][j],sw_result[phase][i][j]);
	  error_count++;
	}
      }
    }
  }

   if (error_count)
    printf("TEST FAIL: %d Results do not match!\n", error_count);
  else
    printf("Test passed!\n");
   printf("average execution time for 16 iterations = %f\n", elapsed_time );
  }


  return error_count;
}

double matrix_mult(
		 mat_a a[2][IN_A_ROWS][IN_A_COLS],
		 mat_b b[2][IN_B_ROWS][IN_B_COLS],
		 mat_prod prod[2][IN_A_ROWS][IN_B_COLS],
		 int phase)
{
	// Write to the Matrix Mult IP 'phase' configuration register
	XMatrix_mult_Set_phase(&matrix_mult_dev, (u32)phase);

	int nb = N/M;

	for (int x=0; x<nb; x++) {
		for(int y=0; y<nb; y++) {

			for (int z=0; z<nb; z++) {
				// Transfer the a and b matrices from DRAM to BRAM
				// Pointer arithmetic and indexing done here for transfers
				for(int i = 0; i < M; ++i) {
					XAxiCdma_SimpleTransfer(&cdma_dev_a, (u32)&(a[phase][i + x*M][z*M]), (u32)(BRAM_A_ID + ((i*M + M*M*phase)*sizeof(float))), M*sizeof(float), NULL, NULL);
					XAxiCdma_SimpleTransfer(&cdma_dev_b, (u32)&(b[phase][i + z*M][y*M]), (u32)(BRAM_B_ID + ((i*M + M*M*phase)*sizeof(float))), M*sizeof(float), NULL, NULL);
					while (XAxiCdma_IsBusy(&cdma_dev_a) && XAxiCdma_IsBusy(&cdma_dev_b)); // Wait for a and b xfer to finish
				}

				// Issue Start signal to the Matrix Mult IP
				XMatrix_mult_Start(&matrix_mult_dev);
				// Spin check the Done signal from the Matrix Mult IP
				while (!XMatrix_mult_IsDone(&matrix_mult_dev));

				// Transfer the product matrix from BRAM to DRAM
				for(int i = 0; i < M; ++i) {
					//XAxiCdma_SimpleTransfer(&cdma_dev_prod, (u32)(BRAM_PROD_ID + ((i*M + M*M*phase)*sizeof(float))), (u32)&(hw_result[phase][x*M + i][y*M]), M*sizeof(float), NULL, NULL);
					XAxiCdma_SimpleTransfer(&cdma_dev_prod, (u32)(BRAM_PROD_ID + ((i*M + M*M*phase)*sizeof(float))), (u32)&(temp[i]), M*sizeof(float), NULL, NULL);
					while (XAxiCdma_IsBusy(&cdma_dev_prod)); // wait for product xfer to finish
				}

				Xil_DCacheInvalidateRange((u32)&(temp),M*M*sizeof(float));

				for(int i = 0; i < M; ++i) {
					for(int j = 0; j < M; ++j) {
						hw_result[phase][x*M + i][y*M + j] += temp[i][j];
					}
				}

			}
		}
	}


	return 0;
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
   // *TIMER_CONFIG_PTR = 0x00000003;
	//*TIMER_PTR = UINT_MAX; //count down from max amount

	matrix_mult_config = XMatrix_mult_LookupConfig(MATRIX_MULT_ID);
	int status = XMatrix_mult_CfgInitialize(&matrix_mult_dev,matrix_mult_config);
	if(status !=XST_SUCCESS){
		printf("ERROR: Matrix_mult Setup Failed\n");
		error++;
	}
	cdma_config_a = XAxiCdma_LookupConfig(CDMA_A_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_a,cdma_config_a,CDMA_A_BASE);
	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA A Setup Failed\n");
		error++;
	}
	cdma_config_b = XAxiCdma_LookupConfig(CDMA_B_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_b,cdma_config_b,CDMA_B_BASE);
	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA B Setup Failed\n");
		error++;
	}
	cdma_config_prod = XAxiCdma_LookupConfig(CDMA_PROD_ID);
	status = XAxiCdma_CfgInitialize(&cdma_dev_prod,cdma_config_prod,CDMA_PROD_BASE);
	if(status !=XST_SUCCESS){
		printf("ERROR: CDMA PROD Setup Failed\n");
		error++;
	}
}
