program one;
var str,str123,str321 : string;
var pos,len,i : integer;
begin
  readln(str);
  len := Length(str);
  pos := len - 2;
  if length(str) > 6 then
  begin
    str123 := copy(str,1,3);
    writeln(str123);
    str321 := copy(str,pos,3);
      WriteLn(str321);
  end  
    else
     for i := 1 to Length(str) do
       begin
       str123 := copy(str,1,1);
       writeln(str123);
       end;
end.