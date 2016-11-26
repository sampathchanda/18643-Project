#ifndef CONV

#define CONV					// header namespace

#include "ap_int.h"
#include <hls_stream.h>

#define IMAGE_WIDTH 28			// width of the image
#define IMAGE_HEIGHT 28			// height of the image

#define CONV_WNDW_SIZE 5		// size of the convolution window
#define MAX_POOL_WNDW_SIZE 2	// size of the window used in max-pooling

#define IMAGE_WNDW (IMAGE_WIDTH * (CONV_WNDW_SIZE - 1) + CONV_WNDW_SIZE)
#define WEIGHT_WNDW (CONV_WNDW_SIZE * CONV_WNDW_SIZE)
#define CONV_OUTPUT_WIDTH (IMAGE_HEIGHT - CONV_WNDW_SIZE + 1)
#define CONV_OUTPUT_BUFF (CONV_OUTPUT_WIDTH * CONV_OUTPUT_WIDTH)
#define POOL_SIZE (MAX_POOL_WNDW_SIZE * MAX_POOL_WNDW_SIZE)
#define OUTPUT_BUFF_SIZE (CONV_OUTPUT_BUFF / POOL_SIZE)

typedef unsigned char uint8_t;

void convolve(
		hls::stream<uint8_t> &image,
		float weights[WEIGHT_WNDW],
		hls::stream<float> &conv_output,
		int *done
		);

#endif
