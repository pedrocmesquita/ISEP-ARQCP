#include <stdlib.h>
#include "new_matrix.h"

int **add_matrixes(int **a, int **b, int y, int k) {
    int i, j;
    int **ptrResult = new_matrix(y, k);
    //Cria um apontador copia para manter o vetor para a matriz resultado
    int **ptrCopia = ptrResult;
    //Apontador para as linhas da matriz 1
    int **ptrLinha_m1 = a;
    //Apontador para as linhas da matriz 2
    int **ptrLinha_m2 = b;
    //Para cada linha das matrizes 1 e 2
    for(i = 0; i < y; i++){
        //Guardamos em ptr a address para o conteudo da linha
        int *ptr = *ptrCopia;
        //Para cada coluna
        for(j = 0; j < k; j ++){
            //Guardamos a soma da do m1[i][j] + m2[i][j]
            int soma = (*(*ptrLinha_m1)) + (*(*ptrLinha_m2));
            //Guardamos a soma na matriz resultado
            *ptr = soma;
            //Proxima coluna da m1 (mesma linha)
            (*ptrLinha_m1)++;
            //Proximo espaço da matriz resultado
            ptr++;
            //Proxima coluna da m2 (mesma linha)
            (*ptrLinha_m2)++; 
        }
        //Próxima linha da m1, m2 e matriz resultado
        ptrLinha_m1++;
        ptrLinha_m2++; 
        ptrCopia++;
    }
    //Retorna a matriz resultado
    return ptrResult;
}
