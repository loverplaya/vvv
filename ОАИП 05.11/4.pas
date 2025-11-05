program four;
var N, i, k,y,x,c: integer;
begin
  readln(N);
  i := 1;
  k := 0;
  while i <= N do
  begin
    x := 1;
    c := 0;
    readln(y);
    while x <= y do
    begin
      if y mod x = 0 then
        c := c + 1;
      x := x + 1;
    end;
    if c = 2 then
      k := k + 1;
    i := i + 1;
  end;
  writeln(k);
end.