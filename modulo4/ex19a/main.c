#include <stdio.h>
#include "asm.h"


int main(){

	int vec1[] = {1,2,3,4,5,6,7,8,9};

    int size = sizeof(vec1)/sizeof(int);
    int vec2[size];

    int *ptr1 = vec1;
    int *ptr2 = vec2;

    add_byte(5,ptr1,ptr2);

    int j = 0;

	printf("vec1: ");
    for(j = 0;j < size; j++){
        printf("%x ",vec1[j]);
    }
    printf("\nvec2: ");

    for(j = 0;j < size; j++){
        printf("%x ",vec2[j]);
    }
    printf("\n");

    return 0;
}
