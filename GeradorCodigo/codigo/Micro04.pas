program micro04;

var 

x, num, intervalo: integer;

begin
    for x:= 1 to 5 do
        begin
            write('Digite um numero: ');
            read(num);
            if (num >= 10) then
                begin
                    if (num <= 150) then
                        begin
                        intervalo := intervalo + 1;
                        end
                end
        end;
    write('Ao total, foram digitados, ');
    write(intervalo);
    writeln(', numeros no intervalo entre 10 e 150');
end.
