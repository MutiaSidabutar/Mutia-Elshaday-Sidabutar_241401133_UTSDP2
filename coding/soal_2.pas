program UTS_soal_2;
uses crt;
var
mean:Real;
angka,n,i,total:integer;
begin
clrscr;
    write('masukkan angka N :');ReadLn(n);
total:=0;
    for i:= 1 to n do
begin
    write('angka ke',i,':');readln(angka);
    total:=total+angka;
end;

    mean:=total/n;
    writeln('jumlah total:',total);
    writeln('Rata-rata:',mean:0:1);
readln;
  end.

