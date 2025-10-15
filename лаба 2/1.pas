program one;
var
  a, b, h, i,y : integer;
  x : real;
begin
 readln(a,b,h);
  i := a;
  while i <= b do
  begin
    x := 3*i*2+5*i/13;
    writeln('Значение x: ',i);
    writeln('y = ',x:0:2);
    i := i + h;
  end;
end.
