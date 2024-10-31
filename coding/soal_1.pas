program UTS_soal_1;
uses crt;
var nama, hari: string;
  produk: array[1..3] of record
    nama: string;
    harga: integer;
    jumlah: integer;
    kategori: string;
  end;
  total, diskonHari, diskonMember, diskonTotal, pembayaran: real;
  poin, i: integer;
begin
  clrscr;
  writeln('Nama Anggota: ');
  readln(nama);
  writeln('Hari: ');
  readln(hari);
     produk[1].nama := 'Pasta gigi';
  produk[1].harga := 16000;
  produk[1].jumlah := 1;
  produk[1].kategori := 'Hygiene';
     produk[2].nama := 'Sabun';
  produk[2].harga := 7000;
  produk[2].jumlah := 1;
  produk[2].kategori := 'Hygiene';
     produk[3].nama := 'Es krim';
  produk[3].harga := 20000;
  produk[3].jumlah := 10;
  produk[3].kategori := 'Frozen Food';
  total := 0;
  for i := 1 to 3 do
    total := total + (produk[i].harga * produk[i].jumlah);
  diskonHari := 0;
  if hari = 'Senin' then
  begin
    for i := 1 to 3 do
      if produk[i].kategori = 'Hygiene' then
        diskonHari := 0.10;
  end
  else if hari = 'Selasa' then
  begin
    for i := 1 to 3 do
      if produk[i].kategori = 'Frozen Food' then
        diskonHari := 0.05;
 end
  else if hari = 'Rabu' then
  begin
    for i := 1 to 3 do
      if produk[i].kategori = 'Elektronik' then
        diskonHari := 0.30;
  end
  else if hari = 'Kamis' then
  begin
    for i := 1 to 3 do
      if produk[i].kategori = 'Laktosa' then
        diskonHari := 0.08;
  end;
  diskonMember := 0.10;
  diskonTotal := diskonHari + diskonMember;
  pembayaran := total * (1 - diskonTotal);
  poin := trunc(total / 50000);
  writeln('Total: Rp', total:0:0);
  writeln('Diskon: ', (diskonMember * 100):0:0, '% + ', (diskonHari * 100):0:0, '% = ', (diskonTotal * 100):0:0, '%');
  writeln('Pembayaran: Rp', pembayaran:0:0);
  writeln('Poin: ', poin);
readln;
end.