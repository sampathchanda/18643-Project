#include "fifo_splitter.h"

void splitter(
		hls::stream<uint8_t> &input,
		hls::stream<uint8_t> output[NUMBER_OF_OUTPUTS]) {
#pragma HLS DATAFLOW
#pragma HLS INTERFACE axis port=input
#pragma HLS INTERFACE axis port=output

	uint8_t temp;

	for(int pixels_read = 0; pixels_read < IMAGE_SIZE; pixels_read++) {
#pragma HLS PIPELINE
		temp = input.read();

		for(int loop_count = 0; loop_count < NUMBER_OF_OUTPUTS;
				loop_count++) {
#pragma HLS UNROLL
			output[loop_count].write(temp);
		}
	}
}
