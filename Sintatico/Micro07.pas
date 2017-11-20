program micro07;
var
    programa, n : integer;
    opc : char;
begin
    programa := 1;
    while(programa = 1) do
        begin
            write('Digite um numero : ');
            readln(n);
            if(n > 0) then
                begin
                    writeln('Positivo');
                end
            if(n = 0) then
                begin
                    writeln (' Numero igual a 0 ');
                end
            if( n < 0 ) then
                begin
                    writeln (' Negativo ');
                end
            write(' De seja finalizar S/N: ');
            readln(opc);
            if(opc = 'S') then
                begin
                    programa := 0;
                end
        end;
end.