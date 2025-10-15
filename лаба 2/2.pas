program two;
var month: array[1..12] of string = ('Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь');
firstmoney,i : integer;
percent : real;
begin
  readln(firstmoney);
  for i := 1 to 12 do
begin
  percent := (firstmoney / 100) * 5;
  firstmoney := firstmoney + Round(percent);
  writeln(month[i],' - ',firstmoney)
end;
end.
