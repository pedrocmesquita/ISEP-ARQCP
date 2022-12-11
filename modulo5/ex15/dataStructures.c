#include <stdio.h>
#include <stdlib.h>

typedef struct Node {							// declare both dataypes, node and stack
    long value;
    struct Node *next;
} Node;

typedef struct Stack {
    Node *head;
    int size;
} Stack;

Stack *stack_new() {							//creates new stack
    Stack *stack = malloc(sizeof(Stack));
    stack->head = NULL;
    stack->size = 0;
    return stack;
}

void stack_push(Stack *stack, long value) {		// value into stack
    Node *node = malloc(sizeof(Node));			// creates new node
    node->value = value;
    node->next = stack->head;

    stack->head = node;							// update stack
    stack->size++;
}

long stack_pop(Stack *stack) {
    if (stack->head == NULL) {					// if empty
        printf("Error: stack is empty\n");
        exit(1);
    }

    long value = stack->head->value;			// fisrt value on stack

    Node *node = stack->head;					//cycle nodes
    stack->head = node->next;
    stack->size--;
    free(node);

    return value;
}

int stack_size(Stack *stack) {					// stack size
    return stack->size;
}

int stack_is_empty(Stack *stack) {				// if empty
    return stack->size == 0;
}

void stack_free(Stack *stack) {					// free memory used by stack
    Node *node = stack->head;
    while (node != NULL) {
        Node *next = node->next;
        free(node);
        node = next;
    }
    free(stack);
}
