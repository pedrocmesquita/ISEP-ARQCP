#include <stdio.h>
#include "asm.h"

int main(void) {

	printf("length1:");
	scanf("%d",&length1);
	printf("length2:");
	scanf("%d",&length2);
	printf("height:");
	scanf("%d",&height);
	printf("Area = %d\n", getArea());
	return 0;
}
