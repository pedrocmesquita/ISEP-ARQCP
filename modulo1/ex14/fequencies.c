#include <stdio.h>
#include "frequencies.h"

void frequencies(float *grades, int n, int *frequency){
	int i, j;		//Instanciar variaveis
	
	for(i=0; i<21; i++){			//Criar array das notas de 0 a 20, tudo a comecar a 0 
		*(frequency+i) = 0;
	}

	for(i=0; i<n; i++){				//Checkar se as notas se encontram no mesmo numero da lista e se sim, adicionar 1
		(int)j = *(grades+i);
		*(frequency+j) = *(frequency+j)+1;
	}
}														
