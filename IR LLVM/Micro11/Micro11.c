#include <stdio.h>
#include <stdlib.h>

int verifica(int n){
    int res;

    if(n > 0)
        res = 1;
    if(n < 0)
        res = -1;
    if(n == 0)
        res = 0;
    return res;
}

int main(){
    int num;
    int res;
    printf("Digite um numero: ");
    scanf("%d", &num);
    res = verifica(num);
    switch(res){
        case -1:
            printf("Numero negativo\n");
            break;
        case 0:
            printf("Numero zero\n");
            break;
        case 1:
            printf("Numero positivo\n");
            break;
    }
    return 0;
}