program micro10;

var 
numero: integer;
fat : integer;

function Fatorial (numero :integer) : integer;
begin
    if (numero <= 0) then
        Fatorial := 1
    else
        Fatorial := numero * Fatorial(numero -1);
end;

begin
    write('Digite um numero: ');
    readln(numero);
    fat := Fatorial(numero);
    write('O fatorial de ');
    write(numero);
    write(' e ');
    writeln(fat);

end.