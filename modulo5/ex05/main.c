#include <stdio.h>
#include "main.h"

int main(int argc, char **argv){
	
	Student s;
	
	Student* ptr = &s;
	
	int new_grades[5] = {1,2,3,4,5};
	
	update_grades(ptr, new_grades);
	int i;
	printf("Novas notas!\n");
	for (i = 0; i < 5; i++)
	{
		printf("%d ", ptr->grades[i]);
	}
	printf("\n");	
	
	return 0;
}
