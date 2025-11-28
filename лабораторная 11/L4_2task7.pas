program L4_2task7;
uses GraphABC;
var x, y: integer;
begin
  SetWindowSize(800, 600);
  
  SetPenColor(clGray);
  Line(50, 550, 400, 100);
  Line(400, 100, 750, 550);
  
  x := 50;
  y := 550;
  
  repeat
    SetBrushColor(clGray);
    SetPenColor(clDarkRed);
    Rectangle(x, y, x+20, y+20);
    
    if x < 400 then
    begin
      x := x + 3;
      y := y - 4;
    end
    else
    begin
      x := x + 3;
      y := y + 4;
    end;
    
    Sleep(20);
  until x > 750;
end.