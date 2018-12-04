#include <stdio.h>
#include <stdlib.h>

#define N 1000000000

void populate_array(double *v, int n) {
  for(int i = 0; i < n; i++) {
      v[i] = 1.0;
  }
}

void print_array(double v[], int n) {
  printf("{ ");
  for(int i = 0; i < n; i++) {
    printf("%f ", v[i]);
  }
  printf("}\n");
} 

double dot_product(double v[], double u[], int n) {
  double result = 0.0;
  for (int i = 0; i < n; i++)
    result += v[i]*u[i];
  return result;
}

int main(int argc, char **argv) {

  double *v = malloc(N*sizeof(double));
  double *u = malloc(N*sizeof(double));

  populate_array(v, N);
  populate_array(u, N);

  double result = dot_product(v,u,N);

  printf("result = %f\n", result);

  free(v);
  free(u);

  return 0;
}
