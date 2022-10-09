#include <stdio.h>
#include "power_ref.h"

void power_ref(int* x,int y){
	 int n=1;
	 int* ptr_n = &n; //Declarar pointer chamado n
	
	if(y>0){
		while (y!=0){ 
			*ptr_n = *ptr_n * *x; y--; //Ciclo ate y ser 0 para ir calculando x por x
		}
		*x = *ptr_n;		
	} else if (y<0){
		while (y!=0){ 
			*ptr_n = *ptr_n * *x; //Ciclo para fazer o contrario do anterior
			y++;
		}	
		*x = *x / *ptr_n;
	} else if(y==0){	//Caso o expoente seja 0, o resultado sera sempre 1
		*x=1;
	}
 }
