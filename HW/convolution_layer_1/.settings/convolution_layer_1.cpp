#include "convolution_layer_1.h"
//#include <iostream>

#define BUFF_SIZE (IMAGE_WNDW - 1)

uint8_t relu(float input);

void convolve(
		hls::stream<uint8_t> &image,
		float weights[WEIGHT_WNDW],
		hls::stream<float> &conv_output,
		int *done){
#pragma HLS DATAFLOW
#pragma HLS STREAM variable=conv_output
#pragma HLS STREAM variable=image

	// std::cout << "successfully entered simulation" << std::endl;
	uint8_t linebuff[BUFF_SIZE + 1];

	uint8_t read;
	float output = 0;
	int t = 0;
	int m = 0;

	// reset the line buffer
	BUFFER_RESET: for(int pos = 0; pos < IMAGE_WNDW; pos++) {
#pragma HLS PIPELINE
		linebuff[pos] = 0;
	}

	SCAN_LINE: for(int pixels_read = 0;
			pixels_read < IMAGE_WIDTH * IMAGE_HEIGHT;
			pixels_read++) {

		// read the FIFO
		read = image.read();
		output = 0;
		m = pixels_read - t;
		if(m >= IMAGE_WIDTH) {
			m = 0;
			t += IMAGE_WIDTH;
		}

		// std::cout << pixels_read  << ") pixels read = "
		//		<< (int)read << std::endl;

		// Saving data into a buffer
		BUFFER_SHIFT: for(int pos = 0; pos < IMAGE_WNDW; pos++) {
#pragma HLS PIPELINE II=2
			linebuff[pos] = pos < IMAGE_WNDW - 1 ? linebuff[pos + 1] :
					read;
		}

		for(int i = 0; i < CONV_WNDW_SIZE; i++) {
			for(int j = 0; j < CONV_WNDW_SIZE; j++) {
#pragma HLS PIPELINE
				output += linebuff[i * IMAGE_WIDTH + j]
				                   * weights[i * CONV_WNDW_SIZE + j];
			}
		}
		output = relu(output);
		// std::cout << "output = " << output << std::endl;

		if (pixels_read > BUFF_SIZE && m >= CONV_WNDW_SIZE - 1) {
			// std::cout << "m = " << m << std::endl;
			conv_output.write(output);
		}
	}

	// std::cout << "done" << std::endl;

	*done = 1;
	*done = 0;

	// std::cout << "done complete returning" << std::endl;
}

uint8_t relu(float input) {
#pragma HLS INLINE
	return input > 0 ? input : 0;
}
