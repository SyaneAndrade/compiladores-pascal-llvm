program nano11;

Var n, m, x: Integer;
begin
    n := 1;
    m := 2;
    x := 5;
    while (x > n) do
        begin
            n := n + m;
            writeln(n);
        end;
end.