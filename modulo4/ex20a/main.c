#include <stdio.h>
#include "sum_multiples.h" 

int main(){

    int resultado = sum_multiples_x((char[]){3,5,11,12,7,4,0}, 0xf0301);

    printf("Resultado: %d\n", resultado);

    return 0;
}
