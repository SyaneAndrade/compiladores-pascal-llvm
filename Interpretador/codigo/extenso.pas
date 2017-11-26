{
algoritmo "micro06"
/* Função : Faça um algoritmo que leia um número de 1 a 5 e o
escreva por
extenso. Caso o usuário digite um número que não esteja
neste intervalo, exibir mensagem: número inválido.

}
program micro05;
var
	numero : integer;
begin
		write('Digite um numero de 1 a 5: ');
		readln(numero);
		if numero = 1 then
		begin
			writeln('Um');
		end
		else
		begin
		   if numero = 2 then
		   begin
			writeln('Dois');
		   end
	           else
		   begin
			if numero = 3 then
			begin
				writeln('Tres');
			end
			else
			begin
			 	if numero = 4 then
				begin
					writeln('Quatro');
				end
				else
				begin
					if numero = 5 then
					begin
					writeln('Cinco');
					end
					else
					begin
					writeln('Numero invalido!!!');
					end;
				end;
			end;
		   end;
		end;
end.


