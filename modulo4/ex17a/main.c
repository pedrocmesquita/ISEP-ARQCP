#include <stdio.h>
#include "asm.h"

int main(void){

	unsigned int date1 = 1;
	unsigned int date2 = 10;
	
	unsigned int result = greater_date(date1, date2);
	
	printf("A maior data é %d\n", result);

	return 0;
}
