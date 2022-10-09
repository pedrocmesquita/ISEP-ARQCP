#include <stdio.h>
#include "power_ref.h"

int main(int argc, char **argv){
	int base = -3;						//Declarar variaveis base e expoente
	int expoente = -2;
	power_ref(&base, expoente);			//Chamar metodo para fazer a conta
	printf("\n %d \n", base);			//Imprimir a resposta
	return 0;
}
