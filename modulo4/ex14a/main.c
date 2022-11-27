#include <stdio.h>
#include "reset_bit.h"

int main(){

    int numero = 133;
    int *ptr = &numero;

    int resultado = reset_bit(ptr, 5);

    printf("Resultado: %d\n", resultado);

    return 0;
}
