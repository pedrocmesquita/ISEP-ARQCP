#include <stdio.h>
#include "odd_sum.h"

int odd_sum(int *p){	
	int sum = 0;				//Inicializar variaveis
	int i;
	int length = p[0];
	for (i=0; i<length+1; i++){		//Ciclo para enquanto o array nao estiver vazio, ir somando os seus numeros impares
		if (*(p+i)%2!=0){
			sum=sum+*(p + i);
		}
	}
	return sum;		//Return ao resultado
}

