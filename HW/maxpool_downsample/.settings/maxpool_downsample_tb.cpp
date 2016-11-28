#include <iostream>
#include <fstream>
#include "maxpool_downsample.h"

using namespace std;

void print_output(hls::stream<uint8_t> &output);

int main () {
	ifstream file;
	hls::stream<uint8_t> input;
	hls::stream<uint8_t> output;
	string cnum;

	bool *add = new bool;
	bool *done = new bool;

	file.open("input", ios::in);
	for(int loop_count = 0; loop_count < INPUT_HEIGHT * INPUT_WIDTH;
			loop_count++){
		getline(file, cnum, ',');
		input.write(atoi(cnum.c_str()));
	}

	maxpool(add, input, output, done);
	print_output(output);

	return 0;
}

void print_output(hls::stream<uint8_t> &output) {
	cout << " hardware outputs" << endl;
	for (int i = 0; i < 12 * 12; i++){
		cout << (int) output.read() << ",";
	}
	cout << endl;
}
