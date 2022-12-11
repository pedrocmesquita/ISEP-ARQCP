#include <stdio.h>
#include <stdlib.h>
#include "dataStructures.h"

int main() {
    Stack * stack = stack_new();					//create new stack
    printf("Size: %d\n", stack_size(stack));		//get size from new stack
    stack_push(stack, 12);							//push values into stack
    stack_push(stack, 10);							
    printf("Size: %d\n", stack_size(stack));		//get its size now
    printf("Popped: %ld\n",stack_pop(stack) );		
    printf("Size: %d\n", stack_size(stack));		//final size 
    
    return 0;
}
