#include <stdio.h>
#include "asm.h"
int i, j, res;

int main(){
	printf("i: ");
	scanf("%d", &i);
	printf("j: ");
	scanf("%d", &j);
	
	printf("F= %d\n", f());
	
	printf("F2= %d\n", f2());
	
	printf("F3= %d\n", f3());
	
	printf("F4= %d\n", f4());
	
	return 0;
	}
