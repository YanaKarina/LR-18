Program zadanie1;
Var
  f,g: File of Integer;
  s: String;
  i,x: Integer;
  a: Array [1..30] of Integer;
begin
Writeln('Введите полное имя файла: ')
Readln(s);
Assign(f,s);
Reset(f);
Writeln('Файл F:');
While not Eof(f) do
begin
  Read(f,x);
  Write(x,' ');
  i:=i+1;
  a[i]:=x;
end;
Writeln;
Assign(g,'4.dat');
Rewrite(g);
For i:=30 downto 1 do
Write(g,a[i]);
Reset(g);
Writeln('Файл G:');
While not Eof(g) do
  begin
  Read(g,x);
  Write(x,' ');
end;
Close(f);
Close(g);
Readln
end.