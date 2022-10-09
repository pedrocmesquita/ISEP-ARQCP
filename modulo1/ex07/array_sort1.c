#include <stdio.h>
#include "array_sort1.h"

void array_sort1(int *ptr, int size)
{
int flag;
int i;
int j;
// Muda os valores do array um a um, usando flag como temporario
for (i = 0; i < size ; i++)
	{
		 for (j=i+1; j<size; j++)
		{
			if (ptr[j] < ptr[i])
			{
				flag = ptr[i]; 
                ptr[i] = ptr[j]; 
                ptr[j] = flag; 
			}
		}
		
		
		
	}
}
