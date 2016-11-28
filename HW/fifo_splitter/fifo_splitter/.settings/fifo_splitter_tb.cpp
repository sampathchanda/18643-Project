#include <iostream>
#include <fstream>
#include "fifo_splitter.h"

using namespace std;

void print_output(hls::stream<uint8_t> &output);

int main(){
	ifstream image;
	string cnum;

	hls::stream<uint8_t> input;
	hls::stream<uint8_t> output[NUMBER_OF_OUTPUTS];
	uint8_t image_contenets[IMAGE_SIZE];

	image.open("image", ios::in);
	if(image != NULL) {
		for(int i = 0; i < IMAGE_SIZE; i++) {
			getline(image, cnum, ',');
			image_contenets[i] = atoi(cnum.c_str());
			cout << (int) image_contenets[i] << ",";
			input.write(image_contenets[i]);
		}
	}

	cout << endl;

	image.close();

	splitter(input, output);

	cout << " outputs" << endl;
	print_output(output[1]);
	return 0;
}

void print_output(hls::stream<uint8_t> &output) {
	for (int i = 0; i < IMAGE_SIZE; i++){
		cout << (int)output.read() << ",";
	}
	cout << endl;
}
