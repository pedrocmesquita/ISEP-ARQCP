#include <stdio.h>
#include "where_is.h"

int main(){
char str[]="aaarraarrdc";
int p[100];
int size = where_is(str,'r',p);
for (int i=0; i<size; i++){
printf("%d \n",*(p+i));
}
return 0;
}
