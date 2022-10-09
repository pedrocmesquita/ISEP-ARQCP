#include <stdio.h>
#include "capitalize.h"

int main(int argc, char **argv){
	char str[] = "a primeira letra de cada palavra desta frase deve estar capitalizada";		//Instanciar variaveis
	int i;
	capitalize(str);	//Chamar metodo para capitalizar

	for (i = 0; str[i]!='\0'; i++){ //Print do resultado
		printf("%c",*(str + i));
	}
	return 0;
}														// 31 minutos mais ou menos
