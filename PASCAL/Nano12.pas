program nano12;

Var n, m, x: Integer;
begin
    n := 1;
    m := 2;
    x := 5;
    while (x > n) do
        begin
            if (n = m) then
                writeln(n)
            else
                writeln(0);
            x := x - 1;
        end;
end.