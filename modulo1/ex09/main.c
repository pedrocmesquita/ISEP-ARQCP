#include <stdio.h>
#include "sort_without_reps.h"

int main(){
int vec[]={1,1,2,2,3,4,5,6};
int n = 8;
int vec2[8];
int items = sort_without_reps(vec,n,vec2);
for (int i=0; i<items;i++){
printf("%d",*(vec2+i));}

printf ("\n %d \n",items);
}
