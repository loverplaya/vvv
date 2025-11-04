program one;
var a: array of integer;
n,i: integer;

function task1(a: array of integer; n: integer): string;
var count,i,j: integer;
check: array of boolean;
res: string;
begin
  SetLength(check, n);
  res := '';
  for i := 1 to n-1 do
    check[i] := false;
  for i := 1 to n-1 do
  begin
    if not check[i] then
    begin
      count := 1;
      for j := i + 1 to n-1 do
      begin
        if a[i] = a[j] then
        begin
          count := count + 1;
          check[j] := true;
        end;
      end;
      res += $'Элемент: {a[i]}, Количество: {count}' + #10;
    end;
  end;
  task1 := res;
end;

begin
  write('Введите длинну массива: ');
  read(n);
  SetLength(a, n);
  for i := 1 to n-1 do
  begin
    readln(a[i]);
  end;
writeln(task1(a,n));
end.