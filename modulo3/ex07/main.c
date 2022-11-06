#include <stdio.h>
#include "asm.h"

    char vec[]="heya world!";
    char *ptr1=vec;
    int count;
    int i;
    
int main(void){

    while(*(ptr1+i)!='\0'){
        printf("%c", *(ptr1+i));
        i++;
    }
    
    count=encrypt();
    
    printf("\n");
    i=0;
    while(*(ptr1+i)!='\0'){
        printf("%c", *(ptr1+i));
        i++;
    }
    
    printf("\ncount: %d\n", count);
    
    int decrypted = decrypt();
	printf("%d carateres descriptados.\n", decrypted);
    return 0;
    
}
