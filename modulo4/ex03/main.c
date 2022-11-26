#include <stdio.h>
#include "asm.h"

int main(void){
	
	int a = 55;
	int b = 11;
	int c = 33;
	int d = 56;

	
	int result = greatest(a, b, c, d);
	
	printf("O maior dos quatro números é %d\n", result);
	
	return 0;
}
