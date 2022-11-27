#include <stdio.h>
#include "changes.h" 

int main(){
    
    int num = 0xFF7FFFFF;
    int *ptr = &num;

    changes(ptr);

    printf("Resultado: %d\n", *ptr);

    return 0;
}
