uses math;
var y,x : real;
begin
readln(x);
    begin
  if x < -9 then
  begin
    y := Power(x, 1/3) * Power(x, 0.1 * x) + Power(x, 3) / Log10(x)
  end
  else if (x >= -9) and (x < 1) then
  begin
   y := Power(x,2)*ln(x) 
  end
  else if (x >= 1) and (x < 4) then
  begin
    y := power(E,x) *(-x)
  end
  else if x >= 4 then
    y := log10(x)*sin(x);
   WriteLn('x = ', x:0:2, '; y = ', y:0:2);
  end;
  
end.
