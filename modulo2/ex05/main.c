#include <stdio.h>
#include "swapBytes.h"
/*Create a new program to manipulate short values. Implement, in Assembly, the function short
swapBytes(). This function swaps the bytes of a 16 bit variable short s, that is, the most significant byte of s becomes the least significant byte and vice-versa. Also, the new least significant byte,
should be twice the value of the previous most significant byte. The function should return the new
short value.
To print a signed 16 bits variable, use the "%hd"specifier. For unsigned shorts, use the "%hu"specifier.
More information can be fount at http://man7.org/linux/man-pages/man3/printf.3.html
*/
short s=0;
int main(void) {
printf("Valor op1:");
scanf("%hd",&s);
printf("%hd\n", swapBytes());
return 0;
}

