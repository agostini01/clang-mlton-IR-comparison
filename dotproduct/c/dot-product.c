#include <stdio.h>

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

  double v[] = {1.0,2.0,3.0,4.0,5.0};
  double u[] = {5.0,4.0,3.0,2.0,1.0};

  print_array(v, 5);
  print_array(u, 5);

  double result = dot_product(v,u,5);

  printf("result = %f\n", result);

  return 0;
}
