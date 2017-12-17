program micro07;

var 
    programa, n: integer;
    opc: char;
begin
    programa := 1;
    while (programa = 1) do
        begin
            write('Digite um numero: ');
            readln(n);
            if (n > 0) then
                writeln('Positivo');
            if (n = 0) then
                writeln('Numero igual a 0');
            if ( n < 0) then
                writeln('Negativo');
            write('Deseja finalizar S/N: ');
            readln(opc);
            if (opc = 'S') then
                programa := 0;
        end;
end.