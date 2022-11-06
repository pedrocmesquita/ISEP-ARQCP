#include <stdio.h>
#include "asm.h"
int i=1, n;

int main(){
	printf("n:");
	scanf("%d", &n);
	printf("%d\n",sum());
	return 0;
}
