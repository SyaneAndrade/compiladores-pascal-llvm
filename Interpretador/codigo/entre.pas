{
algoritmo "micro03"
/* Função : Faça um algoritmo que receba um número e diga se este nú
mero
está no intervalo entre 100 e 200.
/
*
var
numero: inteiro
início
escreva("Digite um número: ")
leia(numero)
se numero >= 100 então
se numero <= 200 então
escreval("O número está no intervalo entre 100 e 200")
senão
escreval("O número não está no intervalo entre 100 e 200")
}

program entre;
var
	numero : integer;
begin
write('Digite um numero :');
readln(numero);
if (numero >= 100) then
begin
	if (numero <= 200) then
	begin
		writeln('O numero esta no intervalo entre 100 e 200');
	end
	else
	begin
		writeln('O numero nao esta no intervalo entre 100 e 200');
	end;
end
else
begin
	writeln('O numero nao esta no intervalo entre 100 e 200');
end;
end.
