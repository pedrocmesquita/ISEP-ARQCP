#include <stdio.h>

int main()
{
int x = 5;
int* xPtr = &x;
float y = *xPtr + 3;
int vec[] = {10, 11, 12, 13};

printf("%d \n",x);
printf("%f \n",y);
printf("%p \n", &x);
printf("%p \n", &xPtr);
printf("%d \n", *xPtr);
printf("%p \n", vec);

int i;
for (i=0;i<4;i++)
{
printf("The value of the vector %d \n", vec[i]);
printf("The address of the vector %p \n", &vec[i]);
}
printf("b) Enquanto que o primeiro é a morada do array completo, os restantes são a morada das respectivas posições no array.\nc) Diferente");
return 0;
}

