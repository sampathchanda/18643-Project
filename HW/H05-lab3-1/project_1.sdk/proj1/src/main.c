#define N 6
#define M 3

int main() {

	int i,j;
	float A[N][N];
	float B[M][M];
	float conv[N-M+1][N-M+1];

	// Initialize A
	for (i=0; i<N; i++) {
		for (j=0; j<N; j++) {
			A[i][j] = (float)(i+j);
		}
	}

	// Initialize B/weights
	for (i=0; i<M; i++) {
		for (j=0; j<M; j++) {
			B[i][j] = (float)(i-j);
		}
	}

	return 1;
}
