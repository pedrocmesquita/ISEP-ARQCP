#include <stdio.h>
#include "sum_even.h"

int sum_even (int *p,int num){
int sum = 0;
int i = 0;
// Passa os valores do vetor todo;
for (i=0;i<num;i++){
	// verifica se é par e soma
if( *p%2==0){
sum = sum + *p;
}
p++;
}
return sum;
}
