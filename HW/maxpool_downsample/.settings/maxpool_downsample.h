#ifndef MAXPOOL

#define MAXPOOL

#include <hls_stream.h>
#include "ap_int.h"

#define INPUT_WIDTH 24
#define INPUT_HEIGHT 24

#define MAXPOOL_WIDTH 2

typedef unsigned char uint8_t;

void maxpool(
		bool *begin,
		hls::stream<uint8_t> &input,
		hls::stream<uint8_t> &output,
		bool *ok);

#endif
