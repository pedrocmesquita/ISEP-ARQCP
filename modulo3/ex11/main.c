#include <stdio.h>
#include "asm.h"

int* ptrvec;
int num = 8;

int main(void)
{
    int array[100] = {1,22,5,9,14,23,-2,0};
    ptrvec = array;
    
    printf("numbers greater than 10 = %d\n", vec_greater10());
    
    return 0;
}
