int sum_multiples_x(char *vec, int x){

    int maskA = 0, secondByte;

    for(int i = 8; i < 16; i++){
        maskA += (1 << i);
    }

    secondByte = x & maskA;
    secondByte = secondByte >> 8;

    int num = *vec, soma = 0, index = 0; 
    while(num != 0){
        int isMultiple = num % secondByte;

        if(isMultiple == 0)
            soma += num;

        index++;
        num = *(vec + index);
    }   
    return soma;
}
