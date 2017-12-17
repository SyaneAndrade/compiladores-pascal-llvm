#include <stdio.h>
#include <stdlib.h>

int main(){
    int num;
    printf("Digite um numero 1 a 5: ");
    scanf("%d", &num);
    switch(num){
        case 1:
            printf("Um\n");
            break;
        case 2:
            printf("Dois\n");
            break;
        case 3:
            printf("Tres\n");
            break;
        case 4:
            printf("Quatro\n");
            break;
        case 5:
            printf("Cinco\n");
        default:
            printf("Numero invalido\n");
    }
    return 0;
}