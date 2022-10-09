#include <stdio.h>
#include "palindrome.h"

int main(){
 char str[]="ababa";
 char* ptr = str;
 int result = palindrome(ptr);
 printf("\n %d \n", result);
 return 0;
 }
 
