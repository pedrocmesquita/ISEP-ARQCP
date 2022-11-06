#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num;

int main(void){
		
	int int_array[]={3,4,5,1,2};
	num=5;
	ptrvec=int_array;
	printf("array desordenado: ");
	
 	array_sort();
 	
	return 0;
}

