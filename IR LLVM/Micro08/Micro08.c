#include <stdio.h>
#include <stdlib.h>


int main(){
    int num = 1;

    while(num != 0){
        printf("Digite um numero: ");
        scanf("%d", &num);
        if(num > 10)
            printf("O numero %d é maior que 10\n", num);
        if(num < 10)
            printf("O numero %d é menor que 10\n", num);
    }
    return 0;
}