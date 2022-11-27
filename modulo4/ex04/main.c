#include <stdio.h>
#include "asm.h"

int main(){

  int num1 = 18, num2 = 15, numStore = 0;
  int *smaller = &numStore;

  int result = sum_smaller(num1, num2, smaller);

  printf("Soma: %d\nSmaller: %d\n", result, *smaller);

  return 0;
}
