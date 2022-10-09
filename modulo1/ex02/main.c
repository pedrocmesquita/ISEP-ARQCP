#include <stdio.h>
#include "copy_vec.h"

int main(void){
	int vec1[]={2,4,6,8,9,10};
	int lenght = sizeof(vec1)/sizeof(int);	 //Inicializar vec1
	int vec2[lenght];		//Inicializar vec2
	int i;								//Inicializar i para fori
	for(i=0;i<lenght;i++){					//Ciclo para imprimir o vec1 todo
		printf("%d",vec1[i]);
	}
	printf("\n");
	copy_vec(vec1, vec2, lenght);
	for(i=0;i<lenght;i++){					//Ciclo para imprimir vec2 todo depois de correr o programa copy_vec.c 
		printf("%d",vec2[i]);
	}
	return 0;				
}

