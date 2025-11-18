function f (x: real): real;
begin
  Result := 2*Power(x, 3) - Power(x, 2) + 2*x + 2;
end;

procedure vvod_predelov (var beginn, endd: real; var n: integer);
begin
  write('Начало интеграла: ');
  readln(beginn);
  write('Конец интеграла: ');
  readln(endd);
  write('Количество прямоугольников: ');
  readln(n);
end;

function metod_left (beginn, endd: real; n: integer): real;
var h,s,x : real; i: integer;
begin
  h := (endd - beginn) / n;
  s := 0;
  x := beginn;
  for i := 1 to n do
    begin
    s := s + f(x);
    x := x + h;
    end;
    Result := s * h;
end;



var
choice: integer;
beginn, endd, integral, s1, s2, error : real;
n: integer;
data_entered, calculated: boolean;

begin
  data_entered := False;
  calculated := False;
  beginn := 0; endd := 0; n := 0; integral := 0;
  
  repeat
    writeln('1. Ввести пределы интегрирования');
    writeln('2. Вычислить площадь фигуры');
    writeln('3. Оценка погрешности');
    writeln('4. Выход');
    readln(choice);
    
    case choice of
      1:
      begin
      vvod_predelov(beginn, endd, n);
      data_entered := True;
      calculated := False;
    end;
    
    2:
    if data_entered then
    begin
      integral := metod_left(beginn, endd, n);
      calculated := True;
      writeln('Площадь фигуры: ', integral:0:3);
      writeln('Нажмите Enter для продолжения');
      readln;
    end
    else
      writeln('Не введены пределы интегрирования');
    
    3:
    if data_entered then
    begin
      s1 := metod_left(beginn, endd, n);
      s2 := metod_left(beginn, endd, 2 * n);
      error := abs(s2 - s1);
      writeln('Погрешность: ', error:0:3);
    end
    else
      writeln('Не введены пределы интегрирования');
    4:
    begin
    writeln('Выход.');
    break;
    end;
    else writeln('Такого пункта нет.');
    end;
  until choice = 4;
end.