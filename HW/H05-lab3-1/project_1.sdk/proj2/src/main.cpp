#include <xparameters.h>
#include <xobj_detector.h>
#include <xaxicdma.h>
#include <xil_cache.h>



#define N 6
#define M 3

#define CDMA_A_ID XPAR_HIER_BRAM_0_AXI_CDMA_0_DEVICE_ID
#define CDMA_A_BASE XPAR_HIER_BRAM_0_AXI_CDMA_0_BASEADDR

#define CDMA_B_ID XPAR_HIER_BRAM_1_AXI_CDMA_0_DEVICE_ID
#define CDMA_B_BASE XPAR_HIER_BRAM_1_AXI_CDMA_0_BASEADDR

#define CDMA_CONV_ID XPAR_HIER_BRAM_2_AXI_CDMA_0_DEVICE_ID
#define CDMA_CONV_BASE XPAR_HIER_BRAM_2_AXI_CDMA_0_BASEADDR

#define OBJ_DETECTOR_ID XPAR_OBJ_DETECTOR_0_DEVICE_ID

#define BRAM_A_ID 0xC0000000
#define BRAM_B_ID 0xC2000000
#define BRAM_CONV_ID 0xC4000000

#define CLOCKS_PER_SEC (XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ)/2

typedef float mat_a;
typedef float mat_b;
typedef float mat_conv;

mat_a in_mat_a[N][N];
mat_b in_mat_b[M][M];
mat_conv hw_result[N-M+1][N-M+1];

XObj_detector_Config *obj_det_config;

XAxiCdma cdma_dev_a;
XAxiCdma_Config *cdma_config_a;
XAxiCdma cdma_dev_b;
XAxiCdma_Config *cdma_config_b;
XAxiCdma cdma_dev_conv;
XAxiCdma_Config *cdma_config_conv;

XObj_detector obj_detector_dev;
XObj_detector_Config *obj_detector_config;

void initialize(int &error);
double obj_detector(
		mat_a a[N][N],
		mat_b b[M][M],
		mat_conv conv[N-M+1][N-M+1]
	);

int main() {
	int i,j;

	float conv[N-M+1][N-M+1];
	int error_count = 0;

	initialize(error_count);
	if (error_count) return XST_FAILURE;

	// Initialize A
	for (i=0; i<N; i++) {
		for (j=0; j<N; j++) {
			in_mat_a[i][j] = (float)(i+j);
		}
	}

	// Initialize B
	for (i=0; i<M; i++) {
		for (j=0; j<M; j++) {
			in_mat_b[i][j] = (float)(i-j);
		}
	}

	// Initialize hw_result
	for(int i = 0; i < N-M+1; ++i) {
		for(int j = 0; j < N-M+1; ++j){
			hw_result[i][j] = 0;
		}
	}
	Xil_DCacheFlush();
	obj_detector(in_mat_a, in_mat_b, hw_result);

	// Convolve

	// Print output
	for(int i = 0; i < N-M+1; ++i) {
		for(int j = 0; j < N-M+1; ++j){
			printf("%f\n", hw_result[i][j]);
		}
	}

	return error_count;
}

double obj_detector(
		 mat_a a[N][N],
		 mat_b b[M][M],
		 mat_conv conv[N-M+1][N-M+1]
	)
{

	int nb = N/M;

	for (int x=0; x<N; x++) {
		XAxiCdma_SimpleTransfer(&cdma_dev_a, (u32)(a[x]), (u32)(BRAM_A_ID + ((x*N)*sizeof(float))), N*sizeof(float), NULL, NULL);
		while (XAxiCdma_IsBusy(&cdma_dev_a)); // Wait for a and b xfer to finish
	}
	for (int y=0; y<M; y++) {
			XAxiCdma_SimpleTransfer(&cdma_dev_b, (u32)(b[y]), (u32)(BRAM_B_ID + ((y*M)*sizeof(float))), M*sizeof(float), NULL, NULL);
			while (XAxiCdma_IsBusy(&cdma_dev_b)); // Wait for a and b xfer to finish
	}
	// Issue Start signal to the Matrix Mult IP
	XObj_detector_Start(&matrix_mult_dev);
	// Spin check the Done signal from the Matrix Mult IP
	while (!XObj_detector_IsDone(&matrix_mult_dev));

	for (int y=0; y<N-M+1; y++) {
		XAxiCdma_SimpleTransfer(&cdma_dev_conv, (u32)(BRAM_CONV_ID + ((y*(N-M+1))*sizeof(float))), (u32)(conv[y]), (N-M+1)*sizeof(float), NULL, NULL);
		while (XAxiCdma_IsBusy(&cdma_dev_conv)); // Wait for a and b xfer to finish
	}

	Xil_DCacheInvalidateRange((u32)(conv),(N-M+1)*(N-M+1)*sizeof(float));

	for(int i = 0; i < N-M+1; ++i) {
		for(int j = 0; j < N-M+1; ++j) {
			hw_result[i][j] += conv[i][j];
		}
	}


	return 0;
}

void initialize(int &error)
{
	obj_detector_config = XObj_detector_LookupConfig(MATRIX_MULT_ID);
	int status = XObj_detector_CfgInitialize(&obj_detector_dev,obj_detector_config);
		if(status !=XST_SUCCESS){
			printf("ERROR: Obj detection Setup Failed\n");
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
