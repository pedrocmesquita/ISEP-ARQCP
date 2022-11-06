#include <stdio.h>
#include "asm.h"

short* ptrvec;
unsigned short num = 5;

int main(){
	short array[] = {1000,10000,3,-1000,-5000};		//declarar aray

	ptrvec = array;									//colocar pointer
	
	keep_positives();								//chamar funcao

	return 0;
}

