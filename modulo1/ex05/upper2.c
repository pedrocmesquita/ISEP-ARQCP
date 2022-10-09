#include <stdio.h>
#include "upper2.h"

void upper2(char *string){
int i;
// Passar por todos
for (i=0; *(string+i)!='\0'; i++){
// Se tiver letra, passa para maiusculo (-32)
if (*(string+i)>='a' && *(string+i) <='z'){
*(string+i)=*(string+i)-32;
}
}
}
