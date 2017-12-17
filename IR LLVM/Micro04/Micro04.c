#include <stdio.h>
#include <stdlib.h>

int main(){
    int x;
    int num;
    int intervalo = 0;

    for(x = 1; x <= 5; x++){
        printf("Digite um numero: ");
        scanf("%d", &num);
        if(num >= 10){
            if(num <= 150)
                intervalo = intervalo + 1;
        }
    }
    printf("Ao total foram digitados %d numeros no intervalo 10 e 150\n", intervalo);
    return 0;
}