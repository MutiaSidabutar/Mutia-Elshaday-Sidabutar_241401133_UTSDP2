program UTS_soal_3;
 uses crt;

var
i,j,t:integer;
begin
    clrscr;
    write('masukkan tinggi segitiga:');readln(t);
     for i:= 1 to t do
    begin
     for j:= 1 to i do
begin
     
     if (i+j) mod 2 = 0  then
     write('1')
     else
     write ('0');
     
    end;
        writeln;
    end;
     
    
    readln;

end.      