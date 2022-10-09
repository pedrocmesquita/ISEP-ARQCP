#include <stdio.h>
#include "upper1.h"

void upper1(char *s){
	int i;
	for(i=0; s[i]!='\0'; i++) {				//Cicle for transforming lowercase into uppercase, goes through the string 
		if(s[i] >= 'a' && s[i] <= 'z'){ 
			s[i] = s[i] -32;
		}
	}
}
