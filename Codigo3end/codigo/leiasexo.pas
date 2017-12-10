{
algoritmo "micro05"
/* Função : Escrever um algoritmo que leia o nome e o sexo de 56
pessoas
e informe o nome e se ela é homem ou mulher. No final
informe
o total de homens e de mulheres.
}
program micro05;
var
	nome : string;
	sexo : integer;
	x, h, m : integer;
begin
x := 1;
h := 0;
m := 0;
	while x < 5 do	
	begin
		write('Digite o nome: ');
		readln(nome);
		write('1 - Homem ou 2 - Mulher: ');
		read(sexo);
		if sexo = 1 then
		begin
			h := h+1;
		end
		else
		begin
			if sexo = 2 then
			begin
			m := m+1;
			end
			else
			begin
			writeln('sexo invalido');
			end;
		end;
	x := x+1;
	end;
	writeln('Foram inseridos ',h,' Homens');
	writeln('Foram inseridas ',m,' Mulheres');
end.
