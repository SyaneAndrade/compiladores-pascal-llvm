#include <stdio.h>
#include <stdlib.h>


int main(){
    int n;
    int m;
    int x;

    n = 1;
    m = 2;
    x = 5;

    while(x > n){
        if( n == m)
            printf("%d\n", n);
        else
            printf("0\n");
        x = x - 1;
    }
    return 0;
}