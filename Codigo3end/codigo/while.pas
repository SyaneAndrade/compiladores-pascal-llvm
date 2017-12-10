program whiles;
var
    x,y,z : integer;
begin
x := 1;
y := 2;
z := 5;
while (z > x) do
begin
	x := x+y;
	writeln(x);
end;
end.
