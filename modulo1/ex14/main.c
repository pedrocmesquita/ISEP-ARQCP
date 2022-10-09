#include <stdio.h>
#include "frequencies.h"

int main(int ac, char** av){
	float grades[]={8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67,16.23, 18.75};     //Instanciar variaveis notas, numero de alunos e criar um array com a frequencia de cada nota
	int n=20;
	int frequency[n];
	int i;
	
	frequencies(grades, n, frequency); //Chamar metodo
	
	for(i=0; i<n;i++){
			printf("%d\n", frequency[i]); //Imprimir resultado
	}
}													// +/- 45 minutos porque demorou p perceber o enunciado
