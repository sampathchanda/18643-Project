#include "feature_extractor.h"
#include <math.h>

uint8 relu(float input);
void convolve(uint8 input_stream[IMAGE_WNDW],
		float weights[WEIGHT_WNDW],
		float output_stream[CONV_OUTPUT_BUFF]);
void max_pool(
		uint8 input[CONV_OUTPUT_BUFF],
		uint8 output[OUTPUT_BUFF_SIZE]);

void extract_feature(hls::stream<uint8> *image,
		float weights[WEIGHT_WNDW],
		hls::stream<float> *feature){
#pragma HLS STREAM variable=feature
#pragma HLS STREAM variable=image

	static stream<uint8> linebuff[IMAGE_WNDW - 1];

	for(int pixels_read = 0; pixels_read < IMAGE_WIDTH * IMAGE_HEIGHT;
			pixels_read++) {
		for(int pos = 0; pos < IMAGE_WNDW; pos++) {
			linebuff[pos] = pos < IMAGE_WNDW - 1 ? linebuff[pos + 1] :
					image.read();
		}
	}
}

uint8 relu(float input) {
#pragma HLS INLINE
	return min(255, max(input, 0));
}
