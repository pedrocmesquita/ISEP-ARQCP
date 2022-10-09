#include <stdio.h>
#include "capitalize.h"

void capitalize (char *str){
	int i;			//Inicializar variaveis
	int check = 1; 
	for(i = 0; *(str + i)!='\0'; i++){ //Checkar se ha ou nao letras antes, se nao houver, capitalizar essa letra
		char algarism = *(str + i);
			if (algarism == ' '){
			check = 1;
			}else{
				if(algarism>='a' && algarism<='z'){
					if(check == 1){
					*(str + i) = *(str + i) -32;		//Mudar a string de minusculo p maiusculo, como no exercicio 6
					check = 0;
					}
					}else if(algarism>='0' && algarism<='9'){		//Manter
							check = 0;
						}else if(algarism>='A' && algarism<='Z'){		//Manter
							check = 0;
			
			}
		}	
	}
}
	
