program four;
var rost: array[1..15] of integer;
fam: array[1..15] of string = ('Иванов','Петров','Сидоров','Стулов','Столов','Смирнов','Кактусов','Ручков','Мышков','Таков','Ковров','Фогов','Сладость','Гадость','Друнов');
i,maxRost,index : integer;
begin
  for i := 1 to 15 do 
    rost[i] := Random(150, 200);
  for i := 1 to 15 do
    writeln(fam[i],' - ', rost[i], ';');
  
maxRost := rost[1];
  for i := 2 to 15 do
  if maxRost < rost[i] then
    maxRost := rost[i];
maxRost := rost[1];
index := 1;
for i := 2 to 15 do
if rost[i] > maxRost then
  begin
  maxRost := rost[i];
  index := i;
  end;
writeln('Самый высокий: ',fam[index],' - ',maxRost);
end.
