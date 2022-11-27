#include <stdio.h>
#include "asm.h"

int main(){

    char string1 [] = "abc";
    char string2 [] = "abc";

    char *a = string1;
    char *b = string2;

    int resultado = test_equal(a, b);

    printf("Resultado: %d\n", resultado);

    return 0;
}
