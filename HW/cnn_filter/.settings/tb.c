#include <stdio.h>
#include "feature_extractor.h"

#define NUMBER_OF_NEURONS 6

void scan (FILE *fp, float W[CONV_WNDW_SIZE][CONV_WNDW_SIZE]);

int main() {
	int image[IMAGE_HEIGHT][IMAGE_WIDTH];
	int

	FILE *fp;
	fp = fopen("images1.csv", "r");
	if(fp == NULL){
		printf("error opening input file!!");
		exit(1);
	}

	for(int )

	fclose(fp);
}

void scan (FILE *fp, float W[CONV_WNDW_SIZE][CONV_WNDW_SIZE]) {
  fscanf(fp, "[[");
  for (int i=0; i<CONV_WNDW_SIZE; i++) {
    for (int j=0; j<CONV_WNDW_SIZE; j++) {
      fscanf(fp, "%f", &W[i][j]);
      if (j != CONV_WNDW_SIZE-1) {
        fscanf(fp, " ");
      }
    }
    fscanf(fp, "]");
    if (i != CONV_WNDW_SIZE-1) {
      fscanf(fp, "\n[");
    }
  }
  fscanf(fp, "]");
}
