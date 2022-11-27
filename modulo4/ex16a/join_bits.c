int join_bits(int a, int b, int pos){      
    int maskA = 0, maskB = 0xffffffff;

    int tempA = a;
    int tempB = b;

    for (int i = 0; i <= pos; i++)
        maskA = maskA + (1 << i);

    maskB ^= maskA;

    int resultB = tempB & maskB;
    int resultA = tempA & maskA;

    int finalResult = resultA | resultB;

    return finalResult;
}
