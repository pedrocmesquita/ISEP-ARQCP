#include <stdio.h>
#include "check.h"

// Verifica se o x é menor que o y, e se o y é menor do que o z

int check(int x, int y, int z){
	if(x<y && y<z){
		return 1;
	}
	else{
		return 0;
	}
}
