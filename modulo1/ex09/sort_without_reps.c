#include <stdio.h>
#include "sort_without_reps.h"

int sort_without_reps(int *src, int n, int *dest){

// verifica se existe array ou se tem so um valor
if ( n == 0 ) return 0;
	
	if ( n == 1 ) {
		*dest = *src;
		return 1;
	}
	// copia para array temporario
	
	int temp[n];
	
	for(int i = 0; i < n; i++){
		
		temp[i] = *(src + i);
		
	}
	// sort
	
	int t;
	
	for(int i = 0; i < n; i++){
		
		for(int j = i + 1; j < n; j++){
			
			if(*(temp + j) < *(temp + i)){
				
				t = *(temp + i);
				*(temp + i) = *(temp + j);
				*(temp + j) = t;		
			}	
		}
	}
	// Se nao for repetido, adiciona
	
	int counter = 1;
	
	for(int i = 0; i < n - 1; i++){
		
		if (*(temp + i) != *(temp + ( i + 1 ))){
			
			*(dest + (counter-1)) = *(temp + i);
			counter++;				
		}	
	}
	 *(dest + (counter - 1)) = *(temp + (n - 1)); // Adiciona o ultimo valor
	
	return counter;	
}
