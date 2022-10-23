#include <stdio.h>
#include "asm.h"

int n1, n2, aux;
char opt;
int main(void) {

	printf("Calculator");
	printf("%s\n","\nType what option you want to use:");
	printf("%s\n","\n1 - Add	\n2 - Subtract	\n3 - Multiply	\n4 - Divide	\n5 - Modulus		\n6 - Power of 2		\n7 - Power of 3");
	scanf("%c",&opt);
	do{
		switch(opt){
			case '1':
				printf("%s\n", "Primeiro numero:");
				scanf("%d", &n1);
				printf("%s\n", "Segundo numero:");
				scanf("%d", &n2);
				printf("%d + %d = %d\n", n1, n2, sum());
				aux=0;
				break;
			
			case '2':
				printf("%s\n", "Primeiro numero:");
				scanf("%d", &n1);
				printf("%s\n", "Segundo numero:");
				scanf("%d", &n2);
				printf("%d - %d = %d\n", n1, n2, sub());
				aux=0;
				break;
			
			case '3':
				printf("%s\n", "Primeiro numero:");
				scanf("%d", &n1);
				printf("%s\n", "Segundo numero:");
				scanf("%d", &n2);
				printf("%d x %d = %d\n", n1, n2, mul());
				aux=0;
				break;
			
			case '4':
				printf("%s\n", "Primeiro numero");
				scanf("%d", &n1);
				printf("%s\n", "Segundo numero");
				scanf("%d", &n2);
				printf("%d / %d = %d\n", n1, n2, div());
				aux=0;
				break;
			
			case '5':
				printf("%s\n", "Primeiro numero:");
				scanf("%d", &n1);
				printf("%s\n", "Segundo numero:");
				scanf("%d", &n2);
				printf("%d MOD %d = %d\n", n1, n2, mod());
				aux=0;
				break;
			
			case '6':
				printf("%s\n", "Numero:");
				scanf("%d", &n1);
				printf("%d^2 = %d\n",n1, pow2());
				aux=0;
				break;
			
			case '7':
				printf("%s\n", "Numero:");
				scanf("%d", &n1);
				printf("%d^3 = %d\n",n1, pow3());
				aux=0;
				break;
			
			default:
			printf("%s\n", "Opcao invalida.");
		}
		
	} while(1==aux);
	return 0;
}
