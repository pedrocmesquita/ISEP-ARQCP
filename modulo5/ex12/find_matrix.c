#include <stdio.h>
#include <string.h>
#include <stdlib.h> 
#include "find_matrix.h"

int find_matrix(int **m, int y, int k, int num){
	int i;
	int j;
	for(i=0; i<y; i++){
		for(j=0; j<k;j++){
			if(m[i][j]==num){
				return 1;
			}
		}
	}
	return 0;
}
