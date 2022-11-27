#include <stdio.h>
#include "asm.h"

int main(){
	char x[] = {1,2,3,4,5};
	char* vec = x;
	int num = sizeof(x)/sizeof(x[0]);
	
	int result;
	
	result = count_odd(vec,num);
	
	printf("There are %d odd numbers on the array \n",result);

	return 0;
}
