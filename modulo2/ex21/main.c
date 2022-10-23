#include <stdio.h>
#include "asm.h"

short code, currentSalary;

int main(void) {

	printf("Calculator");
	printf("%s\n","\nType in your employee code:");
	scanf("%hd",&code);
	printf("%s\n","\nType in your current salary:");
	scanf("%hd",&currentSalary);
		
		printf("%d\n", new_salary());
		
	return 0;
}
