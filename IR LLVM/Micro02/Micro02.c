#include <stdio.h>
#include <stdlib.h>

int main(){
    int num1;
    int num2;

    printf("Digite o primeiro numero: ");
    scanf("%d", &num1);
    printf("Digite o segundo numero: ");
    scanf("%d", &num2);
    if(num1 > num2)
        printf("O primeiro numero %d é maior que o segundo %d\n", num1, num2);
    else
        printf("O segundo numero %d é maior que o primeiro %d\n", num2, num1);
    return 0;
}