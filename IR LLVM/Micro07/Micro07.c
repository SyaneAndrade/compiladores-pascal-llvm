#include <stdio.h>
#include <stdlib.h>

int main(){
    int num;
    int programa;
    char opc;

    programa = 1;
    while(programa == 1){
        printf("Digite um numero: ");
        scanf("%d", &num);
        if(num > 0)
            printf("Positivo\n");
        if(num < 0)
            printf("Negativo\n");
        if(num == 0)
            printf("Zero\n");
        printf("Deseja finalizar S ou N:");
        scanf("%s", &opc);
        if(opc == 'S'){
            programa = 0;
        }
    }
    return 0; 
}