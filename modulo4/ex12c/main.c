#include <stdio.h>
#include "asm.h"

int main(){

    int vetor [] = {133,133,133,133};

    int *ptr = &vetor[0];
    
    int resultado = vec_count_bits_one(ptr,4);

    printf("Resultado: %d\n", resultado);

    return 0;
}
