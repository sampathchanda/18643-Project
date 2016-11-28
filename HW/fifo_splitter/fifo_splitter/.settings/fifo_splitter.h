#ifndef FIFO

#define FIFO

#include <hls_stream.h>

#define NUMBER_OF_OUTPUTS 6

#define IMAGE_WIDTH 28			// width of the image
#define IMAGE_HEIGHT 28			// height of the image

#define IMAGE_SIZE (IMAGE_WIDTH * IMAGE_HEIGHT)

typedef unsigned char uint8_t;

void splitter(
		hls::stream<uint8_t> &input,
		hls::stream<uint8_t> output[NUMBER_OF_OUTPUTS]);

#endif
