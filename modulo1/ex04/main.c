#include <stdio.h>
#include "upper1.h"


int main(int argc, char **argv)
{
    
    char stra[]="String to be transformed";
    upper1(stra);
    printf("String in uppercase: %s\n",stra);
    
    return 0;
}
