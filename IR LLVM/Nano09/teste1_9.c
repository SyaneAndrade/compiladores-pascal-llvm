#include <stdio.h>
#include <stdlib.h>

int main(){
    double n;

    n = 1.0 + (1.0/2.0);
    
    if(n == 1.0)
        printf("%f\n", n);
    else
        printf("%d\n", 0);
    
    return 0;
}