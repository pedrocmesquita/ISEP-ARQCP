#include <stdio.h>
#include "asm.h"

short s1 = 33;
short s2 = 22;


int main()
{
short res = crossSumBytes();
printf("%hd\n", res);
return 0;
}
