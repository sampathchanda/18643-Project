#include <stdio.h>
#include "feature_extractor.h"

void scan (FILE *fp, float W[CONV_WNDW_SIZE][CONV_WNDW_SIZE]);

int main() {

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
