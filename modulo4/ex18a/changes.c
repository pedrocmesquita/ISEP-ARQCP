void changes(int *ptr){
    int maskA = 0;
    int c = (*ptr >>  8) & 0xff;
    if (c > 15){ 
    for(int i = 16; i < 24; i++){
        maskA += (1 << i);
    }

    int resultingBits = *ptr & maskA;
    

    if(resultingBits > 7)
        *ptr = *ptr ^ maskA;
        }
}
