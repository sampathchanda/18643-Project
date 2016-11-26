#include <iostream>
#include <fstream>
#include <string>
#include "convolution_layer_1.h"

using namespace std;

void s_convolve(
		uint8_t image[IMAGE_HEIGHT * IMAGE_WIDTH],
		float weights[WEIGHT_WNDW],
		float output[CONV_OUTPUT_BUFF]);

void print_output(float output[CONV_OUTPUT_BUFF]);
void print_output(hls::stream<float> &output);

int main() {
	ifstream image;
	ifstream weights_f;
	string cnum;
	string inum;
	uint8_t pixels[IMAGE_HEIGHT * IMAGE_WIDTH];
	float weights[WEIGHT_WNDW];
	float s_output[CONV_OUTPUT_BUFF];

	hls::stream<uint8_t> input_image;
	hls::stream<float> h_output;

	int *done = new int;

	image.open("images1", ios::in);

	if(image != NULL) {
		for(int i = 0; i < IMAGE_HEIGHT * IMAGE_WIDTH; i++) {
			getline(image, inum, ',');
			pixels[i] = atoi(inum.c_str());
			input_image.write(pixels[i]);
		}
	}

	image.close();

	weights_f.open("weights", ios::in);

	if(weights_f != NULL) {
		for(int i = 0; i < WEIGHT_WNDW; i++) {
			getline(weights_f, cnum, ',');
			weights[i] = atof(cnum.c_str());
		}
	}

	weights_f.close();

	cout << "starting software simulation" << endl;
	s_convolve(pixels, weights, s_output);
	cout << "software simulation completed successfully" << endl;
	print_output(s_output);

	cout << "starting hardware simulation" << endl;
	convolve(input_image, weights, h_output, done);
	cout << "software simulation completed successfully" << endl;
	print_output(h_output);
}

void s_convolve(
		uint8_t image[IMAGE_HEIGHT * IMAGE_WIDTH],
		float weights[WEIGHT_WNDW],
		float output[CONV_OUTPUT_BUFF]) {
	int x,  y;
	float a;

	for (int i = 0; i < CONV_OUTPUT_WIDTH; i++) {
		for (int j = 0; j < CONV_OUTPUT_WIDTH; j++) {
			output[i * CONV_WNDW_SIZE + j] = 0;
	  }
	}
	for (int i = CONV_WNDW_SIZE / 2;
			i < IMAGE_HEIGHT - (CONV_WNDW_SIZE / 2); i++) {
		for (int j = CONV_WNDW_SIZE / 2;
				j < IMAGE_WIDTH - (CONV_WNDW_SIZE / 2); j++) {
			for (int k = 0; k < CONV_WNDW_SIZE; k++) {
				for (int l = 0; l < CONV_WNDW_SIZE; l++) {

					x = i - CONV_WNDW_SIZE / 2 + k;
					y = j - CONV_WNDW_SIZE / 2 + l;

					a = image[x * IMAGE_WIDTH + y] *
							weights[k * CONV_WNDW_SIZE + l];

					output[((i - CONV_WNDW_SIZE / 2) *
							CONV_OUTPUT_WIDTH) +
					       j - CONV_WNDW_SIZE / 2] += a;
				}
			}
		}
	}

	for(int i = 0; i < CONV_OUTPUT_BUFF; i++){
		output[i] = output[i] > 0 ? output[i] : 0;
	}
}

void print_output(float output[CONV_OUTPUT_BUFF]) {
	cout << " software outputs" << endl;
	for (int i = 0; i < CONV_OUTPUT_BUFF; i++){
		cout << output[i] << ",";
	}
	cout << endl;
}

void print_output(hls::stream<float> &output) {
	cout << " hardware outputs" << endl;
	for (int i = 0; i < CONV_OUTPUT_BUFF; i++){
		cout << output.read() << ",";
	}
	cout << endl;
}
