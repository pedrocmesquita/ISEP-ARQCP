#include <stdio.h>
#include "where_exists.h"


int main(){
    char word[] = "arqcp";
    char sentence[] = "adoro fazer exercicios de arqcp";

    char * ptr = where_exists(word, sentence);

    printf("\n Endereco na memoria: %p\n", &ptr);

    return 0;
}				// 1h10 mais ou menos, chato por causa das variaveis todas

