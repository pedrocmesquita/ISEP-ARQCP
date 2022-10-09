#include <stdio.h>
#include "upper1.h"


int main(int argc, char **argv)
{
    
    char s[]="String to be transformed";
    upper1(s);								//Calls method upper1
    printf("String in uppercase: %s\n",s);
    
    return 0;
}
