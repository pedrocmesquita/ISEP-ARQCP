#include <stdio.h>
#include "asm.h"


char byte1= ' ';
char byte2= ' ';

int main()
{
	short int s=concatBytes();
	printf("%#X \n", s);
	return 0;
}
