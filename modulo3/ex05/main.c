#include <stdio.h>
#include "asm.h"


long array[]={-1,-1,-1};
long *ptrvec;
short num=3;

int main(){

	ptrvec = array;
	long sum = vec_sum();
	long avg = vec_avg();
	printf("Soma: %ld\n", sum);
	printf("Media: %ld\n", avg);
	
	return 0;
}
