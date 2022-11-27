#include <stdio.h>
#include "asm.h"

int main(void){
	
	int num1=33;
	int v2=5;
	int *v1=&num1;

	printf("%d e %d\n", num1, v2);
	
	int res = inc_and_square(v1, v2);
	
	printf("\%d e %d\n", num1,res);

	return 0;
}

