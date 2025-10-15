program theree;
var x,y,a,R,R1,R2 : real;
i,n: integer;
begin
  read(n,R,R1,R2);
  for i := 1 to n do
  begin
    readln(x,y);
    writeln('x = ',x,':','y = ',y);
    a := (x*x)+(y*y);
    if R*R >= a then
      writeln('Точка лежит в радиусе')
    else
      writeln('Точка не лежит в радиусе');
    
    if R1*R1 >= a then
      writeln('Точка лежит в меньшем радиусе')
    else
    writeln('Точка не лежит в меньшем радиусе');
  
    if R2*R2 >= a then
      writeln('Точка лежит в большем радиусе')
    else
      writeln('Точка не лежит в большем радиусе');
  end;
end.