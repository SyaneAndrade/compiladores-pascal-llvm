#include <stdio.h>
#include <stdlib.h>

int fatorial(int n){
    if(n <= 0)
        return 1;
    return n * fatorial(n-1);
}

int main(){
    int num;
    int fat;
    printf("Digite um numero:");
    scanf("%d", &num);
    fat = fatorial(num);
    printf("O fatorial de %d e %d\n", num, fat);
    return 0;
}