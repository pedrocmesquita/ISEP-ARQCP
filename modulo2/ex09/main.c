#include <stdio.h>
#include "asm.h"

int A=0;  //32 bits
short B=0;	//16 bits
char C=0, D=0;	//8 bits

int main(void) {
	printf("Valor A:");
	scanf("%d",&A);
	printf("Valor B:");
	scanf("%hd",&B);
	printf("Valor C:");
	scanf("%hhd",&C);
	printf("Valor D:");
	scanf("%hhd",&D);
	printf("sum = %ld\n", sum_and_subtract());
	return 0;
}
