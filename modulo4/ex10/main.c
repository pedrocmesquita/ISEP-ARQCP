#include <stdio.h>
#include "asm.h"

int main(){

    int resultado = call_incr();

    printf("Resultado: %d\n", resultado);

    return 0;
}
