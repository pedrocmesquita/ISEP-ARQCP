#include <stdio.h>
#include "asm.h"

int main(void){
	
	int a = 16;
	int left = 13;
	int right = 1;
	
	int result = activate_bits(a, left, right);
	
	printf("O resultado é igual a %d\n", result);

	return 0;
}
