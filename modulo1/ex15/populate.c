#include <stdio.h>
#include <stdlib.h>
#include "populate.h"

//rand para gerar numero

void populate(int *vec, int num, int limit){
	int i;
	
	for(i=0;i<num;i++){
		*(vec+i)=(rand() %(limit + 1));
	}
}
