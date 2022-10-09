#include <stdio.h>
#include "copy_vec.h"

void copy_vec(int *vec1,int *vec2, int n){
	// Inicializar variavel i para o ciclo for
	int i;
	// Para os primeiros n elementos, atribuir o valor dos elementos de vec1 para os elementos de vec2
	for(i=0; i<n; i++){
		*(vec2 + i) = *(vec1 + i);
	}
}
