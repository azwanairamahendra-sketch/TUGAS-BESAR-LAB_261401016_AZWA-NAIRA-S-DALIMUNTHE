program Soal1;
uses crt;

var
  N, i: integer;
  harga, total, diskon, bayar: real;

begin
  clrscr;
  write('Masukkan jumlah barang: ');
  readln(N);
  
  total := 0;

  //Input harga barang satu per satu 
  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ': ');
    readln(harga);
    total := total + harga;
  end;

  //Cek diskon
  if total >= 500000 then
  begin
    diskon := total * 0.20;
  end
  else if total >= 100000 then
  begin
    diskon := total * 0.10;
  end
  else
  begin
    diskon := 0;
  end;

  bayar := total - diskon;

  //Tampilkan hasil
  writeln;
  writeln('Total belanja      : Rp ', total:0:0);
  writeln('Diskon yang dapat  : Rp ', diskon:0:0);
  writeln('Total harus dibayar: Rp ', bayar:0:0);
  
  readln;
end.