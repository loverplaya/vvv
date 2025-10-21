program two;
var str, str1,str2,pos1: string;
  begin
    readln(str);
    str1 := Copy(str,1,3);
    if str1 = 'abc' then
      begin
      delete(str,1,3);
      insert('www',str,1);
      writeln(str);
      end
      else
        writeln(str + 'zzz');
  end.