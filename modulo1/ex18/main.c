#include <stdio.h>
#include "compress_shorts.h"

int main(){
	short array1[6]={1,3,5,7,9,11};						//Instanciar variaveis
	int size1 = (sizeof(array1)/sizeof(array1[0]));
	int size2 = size1/2;
	int array2[size2], i;
	
	printf("\n");
	for(i=0; i < size1; i++){
		if(i == size1-1){
			printf("%d\n", *(array1+i));
		}
		else{
			printf("%d, ", *(array1 +i));
		}
	}
	
	compress_shorts(array1, size1, array2);
	
	printf("\n");
	for(i=0; i < size2; i++){
		if(i == size2-1){
			printf("%x\n", *(array2+i));
		}
		else {
			printf("%x, ", *(array2+i));
		}
	}
	
	return 0;
}							// 3 horas e 10, muita teoria la no meio e nao testado
