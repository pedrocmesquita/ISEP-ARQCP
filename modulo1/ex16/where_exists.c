#include <stdio.h>
#include "where_exists.h"

char* where_exists(char* str1, char* str2){
	char *str;
	int i,j,k;
	for(i=0; str2[i]; i++){
		str = (str2 + i);
		k=i,j=0;
		while(((str2[k]) != '\0') && (str1[j] != '\0')){
			if(str2[k] != str1[j]){
				break;
			}
			j++, k++;
		}
		if (!str1[j]){
			return str;
		}
	}
	return NULL;
}
