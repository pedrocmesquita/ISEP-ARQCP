#include <stdio.h>
#include "asm.h"

int main(void){

	int left = 1;
	int right = 12;
	int a = 123;
	
	int result = activate_invert_bits(a, left, right);
	
	printf("O resultado é %d\n", result);

	return 0;
}
