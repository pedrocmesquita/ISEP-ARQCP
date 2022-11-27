int reset_bit(int *ptr, int pos){   
    int mask = 1 << pos;
    int bit = *ptr & mask;

    bit = bit >> pos;

    if(bit == 0){
        return 0;
    }
    *ptr = *ptr & ~(mask);
    return 1;
}
