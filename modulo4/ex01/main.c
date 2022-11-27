#include <stdio.h>
#include "asm.h"

int main(void){
	
	int x = -3;
	
	long result = cube(x);
	
	printf("O cubo de %d é %ld\n", x, result);

	return 0;
}
