#include <stdio.h>
#include "find_word.h"

int main(){

	char string[] = "Odeio a virtual machine";
	char word[] = "virtual";
	char* ptr;
	ptr = find_word(word,string);
	printf("%d \n",&ptr);

	return 0;
}
