#include "export.h"
#include <stdio.h>
#include <math.h>
#include "print-static.h"

Int32 FFI_INT = 13;
Word32 FFI_WORD = 0xFF;
Bool FFI_BOOL = 1;
Real64 FFI_REAL = 3.14159;

int mypow(int a, int b) {
  int c;
  c = pow(a,b);
  return c;
}


Char8 ffi (Pointer a1, Int32 a1len, Pointer a2, Pointer a3, Int32 n) {
  double *ds = (double*)a1;
  int *pi = (int*)a2;
  char *pc = (char*)a3;
  int i;
  double sum;

  sum = 0.0;
  for (i = 0; i < a1len; ++i) {
    sum += ds[i];
    ds[i] += n;
  }

  print_from_static();

  printf("C > sum: % f\n",sum);
  sum = mypow(sum, 2);
  printf("C > sum = sum^2 %f\n",sum);
  *pi = (int)sum;
  printf("C > pointer that holds sum: %d\n",*pi);
  *pc = 'c';
  return 'c';
}
