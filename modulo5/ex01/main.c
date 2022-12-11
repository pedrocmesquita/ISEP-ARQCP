#include <stdio.h>

typedef union union_u1{						// declarar data type u
	char vec[32];
	float a;
	int b;
} u;

typedef struct struct_s1{					// declarar data type s
	char vec[32];
	float a;
	int b;
} s;

int main(){
	printf("Union: %ld.\n", sizeof(u));		// print dos tamanhos dos data types
	printf("Struct: %ld.\n", sizeof(s));	
	
	return 0;
}
