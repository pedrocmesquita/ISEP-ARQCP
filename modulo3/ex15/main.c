#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num;


int main(){
	int array[]={111111,2,3};		
	ptrvec=array;
	num=3;
	int res = sum_first_byte();							//chamar a funcao
	printf("Soma dos primeiros bytes: %d\n", res);
	return 0;
}
