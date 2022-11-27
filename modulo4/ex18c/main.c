#include <stdio.h>
#include "asm.h" 

int main(){

    int num = 0xFF7FFFFF;
    int *ptr = &num;

    changes_vec(ptr);

    printf("Resultado: %d\n", resultado);

    return 0;
}
