uses Math;
var
  x, y: Real;
begin
  ReadLn(x);
  if x < -9 then
  begin
    if x <> 0 then
      y := Sign(x) * Power(Abs(x), 1/3) * Power(Abs(x), 0.1 * x) + Power(x, 3) / Log10(Abs(x))
    else
      y := 0;
  end
  else if (x >= -9) and (x < 1) then
  begin
    if x > 0 then
      y := Power(x, 2) * Ln(x)
    else
      y := 0;
  end
  else if (x >= 1) and (x < 4) then
    y := Exp(x) * (-x)
  else
    y := Log10(x) * Sin(x);
  WriteLn('x = ', x:0:2, '; y = ', y:0:2);
end.
