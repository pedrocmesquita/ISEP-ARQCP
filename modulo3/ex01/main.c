#include <stdio.h>
#include "asm.h"

char *ptr1;

int main(void){
	char str[] = "eu gosto do numero 77777777"; 		// string usada . resposta esperada e 7
	ptr1 = str;											// por a string no pointer
	int res = seven_count();
	printf("%d\n", res);								// print do resultado da funcao
	return 0;
}

