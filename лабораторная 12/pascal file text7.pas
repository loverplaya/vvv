begin
  var n, sum: integer;
  var f1, f2: text;
  
  assign(f1, 'E:\ОАиП\лабораторная 12\z3.in.txt');
  reset(f1);
  read(f1, n);
  close(f1);
  
  sum := 0;
  
  for var p := 2 to round(sqrt(sqrt(n))) do
  begin
    var isSimple := true;
    
    if p >= 2 then
      for var i := 2 to round(sqrt(p)) do
        if p mod i = 0 then
        begin
          isSimple := false;
          break;
        end;
    
    if isSimple and (p * p * p * p <= n) then
      sum := sum + p * p * p * p;
  end;
  
  assign(outputFile, 'E:\ОАиП\лабораторная 12\z3.out.txt');
  rewrite(outputFile);
  write(outputFile, sum);
  close(outputFile);
  
  writeln('Сумма = ', sum);
end.