program UTS_no_4;
uses crt;
var
n,i,j:integer;
prima:boolean;

begin   
    clrscr;
        write('masukkan nilai n:');readln(n);
        writeln('bilangan prima anatara 1 dan',n,'adalah:');

            for i:=2 to n do
begin
            prima:=true;

            for j:=2 to trunc(sqrt(i))do
begin
            if i mod j =0 then
begin
            prima:=false;
            break;
            end;
        end;
            if prima then
            write(i,',');
        end;

            writeln;
            readln;
end.