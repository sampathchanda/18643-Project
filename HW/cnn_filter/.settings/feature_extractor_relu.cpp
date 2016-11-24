#include "feature_extractor.h"
#include <math.h>

uint8 relu(float input);
void max_pool(
		uint8 input[CONV_OUTPUT_BUFF],
		uint8 output[OUTPUT_BUFF_SIZE]);

void extract_feature(hls::stream<uint8> *image,
		float weights[WEIGHT_WNDW],
		hls::stream<float> *feature){
#pragma HLS STREAM variable=feature
#pragma HLS STREAM variable=image

	uint8 linebuff[IMAGE_WNDW - 1];
	float output = 0;

	for(int pixels_read = 0; pixels_read < IMAGE_WIDTH * IMAGE_HEIGHT;
			pixels_read++) {
		for(int pos = 0; pos < IMAGE_WNDW; pos++) {
			linebuff[pos] = pos < IMAGE_WNDW - 1 ? linebuff[pos + 1] :
					(*image).read();
			for(int i = 0; i < CONV_WNDW_SIZE; i++) {
				for(int j = 0; j < CONV_WNDW_SIZE; j++) {
					output += linebuff[i * IMAGE_WIDTH + j]
					                   * weights[i * CONV_WNDW_SIZE + j];
				}
			}

			relu(output);
		}

		if (pixels_read >= IMAGE_WNDW - 1){

		}
	}
}

uint8 relu(float input) {
#pragma HLS INLINE
	return min(255, max(input, 0));
}
