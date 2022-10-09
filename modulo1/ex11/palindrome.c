#include <stdio.h>
#include "palindrome.h"

int palindrome(char *str){
int x = 0;
int i;
//Tamanho do array
while ( *(str+x)!='\0'){
x++;}

if(x==0)
return 0;


x--;
//Sucessivas comparaçoes, com ifs a separar entre diferentes dados (minusculas, maiusculas e numeros)
for (i=0;*(str+i) != '\0';i++){
	if((*(str+i) >= 'a' && *(str+i) <= 'z') && ((*(str+x) >= 'a' && *(str+x) <= 'z'))){
		if (*(str + i) != *(str + x)){	
					return 0;}
			if (*(str+i) >= 'A' && *(str+i) <= 'Z' && ((*(str+x) >= 'A' && *(str+x) <= 'Z'))){
				if (*(str + i) != *(str + x)){	
					return 0;}
				}
		 }
		 
		 if(*(str+i) >= '0' && *(str+i) <= '9' && ((*(str+x) >= '0' && *(str+x) <= '9')))
		 {			
			if (*(str + i) != *(str + x))
			{	
				return 0;
			}		
		}
		
		x--;		
	} 	
	return 1;
}
