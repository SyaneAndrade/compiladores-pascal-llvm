#include <stdio.h>
#include <stdlib.h>

int main(){
    char nome[45];
    char sexo;
    int x;
    int m;
    int h;
    int max;

    max = 5;
    h = 0;
    m = 0;

    for(x=1; x <= max; x++){
        printf("Digite o nome: ");
        scanf("%s", nome);
        printf("Digite H  para Homem ou M para Mulher: ");
        scanf("%s", &sexo);
        switch(sexo){
            case 'H':
                h++;
                break;
            case 'M':
                m++;
                break;
            default:
                printf("Sexo só pode ser H ou M");
                break;
        }
    }
    printf("Foram inseridos %d Homens\n", h);
    printf("Foram inseridos %d Mulheres\n", m);
    return 0;
}