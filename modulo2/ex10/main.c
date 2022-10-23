#include <stdio.h>
#include "asm.h"

int op1=1, op2=2, op3=3;

int main(){
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	printf("Valor op3:");
	scanf("%d",&op3);
	
	printf("%lld\n", sum3ints());
	return 0;
}
