#include <stdio.h>
#include "odd_sum.h"

int main(int argc, char **argv){
	int vec[]= {5,2,2,2,3,2}; //Inicializar variaveis
	int soma=0;
	soma=odd_sum(vec);		//Chamar metodo para o array instaciado
	printf("\n %d \n ", soma);		//Print ao resultado
	return 0;
}																				//18 minutos +/-
