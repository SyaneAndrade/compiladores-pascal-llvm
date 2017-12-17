#include <stdio.h>
#include <stdlib.h>

int main(){
    int num;

    printf("Digite um numero: ");
    scanf("%d", &num);

    if(num >= 100){
        if(num <= 200)
            printf("O numero esta no intervalo entre 100 e 200\n");
        else
            printf("O numero nao esta no intervalo entre 100 e 200\n");
    }
    else
        printf("O numero nao esta no intervalo entre 100 e 200\n");
    return 0;
}