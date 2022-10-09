#include <stdio.h>
#include "array_sort1.h"

int main(){
int array[6]={1,4,2,6,3,-1};
int *point = array;
array_sort1(point,6);
// Dar print aos valores
for (int i = 0; i<6;i++){
printf("%d \n",*(array + i));
}
return 0;
}
