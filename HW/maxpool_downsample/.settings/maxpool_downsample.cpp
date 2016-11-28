#include "maxpool_downsample.h"

#define BUFF_SIZE (INPUT_WIDTH / 2)
#define LOOP_COUNT (INPUT_HEIGHT / 2)
void maxpool(
		bool *begin,
		hls::stream<uint8_t> &input,
		hls::stream<uint8_t> &output,
		bool *ok) {
#pragma HLS INTERFACE ap_none port=ok
#pragma HLS INTERFACE ap_none port=begin
#pragma HLS DATAFLOW
#pragma HLS STREAM variable=input
#pragma HLS STREAM variable=output

	uint8_t linebuff[BUFF_SIZE];
	uint8_t temp1;
	uint8_t temp2;
	uint8_t temp3;

	RESET: for(int pos = 0; pos < BUFF_SIZE; pos++) {
		linebuff[pos] = 0;
	}

	LOOP: for(int loop_count = 0;
			loop_count < LOOP_COUNT; loop_count++) {
#pragma HLS PIPELINE
		FIRST_LINE: for(int loop_window = 0;
				loop_window < BUFF_SIZE; loop_window++) {
			temp1 = input.read();
			temp2 = input.read();

			linebuff[loop_window] = temp1 > temp2 ? temp1 : temp2;
		}

		SECOND_LINE: for(int loop_window = 0;
				loop_window < BUFF_SIZE; loop_window++) {
			temp1 = input.read();
			temp2 = input.read();

			temp3 = temp1 > temp2 ? temp1 : temp2;
			temp3 = linebuff[loop_window] > temp3 ? linebuff[loop_window] :
					temp3;

			output.write(temp3);
		}
	}
}
