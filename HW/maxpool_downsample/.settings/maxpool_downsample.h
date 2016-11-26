#ifndef MAXPOOL

#define MAXPOOL

#include <hls_stream.h>
#include "ap_int.h"

#define INPUT_WIDTH 24
#define INPUT_HEIGHT 24

#define MAXPOOL_WIDTH 2

void maxpool(
		int *start,
		hls::stream<float> &input,
		hls::stream<float> &output,
		int *done);

#endif
