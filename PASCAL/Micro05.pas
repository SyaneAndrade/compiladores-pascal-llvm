program micro05;
var 
    nome: string[45];
    sexo: char;
    x, h, m, max: integer;
begin
    max := 5;
    h := 0;
    m := 0;
    for x := 1 to max do
    begin
        write('Digite o nome: ');
        readln(nome);
        write('Digite H - para Homem ou M- para Mulher: ');
        readln(sexo);
        if(sexo = 'H') then
            h := h + 1;
        if  (sexo = 'M') then
            m := m + 1;
        if (sexo <> 'M') AND (sexo <> 'H') then
            writeln('Sexo so pode ser H ou M');
    end;
    write('Foram inseridos, ');
    write(h);
    writeln(' Homens');
    write('Foram inseridos ');
    write(m);
    writeln(' Mulheres');
end.