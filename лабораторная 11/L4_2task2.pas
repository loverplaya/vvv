uses GraphABC;
begin
  SetWindowWidth(600);
  SetWindowHeight(400);
  SetBrushColor(clLime);
  SetPenColor(clBlack);
  Polygon(
    new Point(500, 50),
    new Point(200, 300),
    new Point(425, 300));
  SetBrushColor(clBlue);
  SetPenColor(clBlack);
  Polygon(
    new Point(100, 50),
    new Point(400, 300),
    new Point(175, 300));
  SetBrushColor(clRed);
  SetPenColor(clBlack);
  Polygon(
    new Point(300, 50),
    new Point(400, 300),
    new Point(200, 300));
    
  SetBrushColor(clBlue);
  Circle(100, 50, 30);
  SetBrushColor(clRed);
  Circle(300, 50, 30);
  SetBrushColor(clLime);
  Circle(500, 50, 30);
end.