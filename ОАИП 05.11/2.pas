program two;
var N, x, k: integer;
begin
  readln(N);
  x := 1;
  k := 0;
  while x <= N do
    begin
    if N mod x = 0 then
      k := k + 1;
      x := x + 1;
    end;
    writeln(k);
end.