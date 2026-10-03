program Soal3;
uses crt;

var
  N, pil, i: integer;

begin
  clrscr;
  //Input batas N dan kategori deret 
  write('Masukkan nilai N: ');
  readln(N);
  writeln('Pilih angka: 1. Ganjil | 2. Genap');
  write('Pilihan (1/2): ');
  readln(pil);

  i := 0;
  writeln('Hasil deret angka:');
  
  //Perulangan while loop dari 1 sampai N 
  while i < N do
  begin
    i := i + 1;

    //Lewati angka genap jika memilih ganjil
    if (pil = 1) and (i mod 2 = 0) then
      continue;

    //Lewati angka ganjil jika memilih genap
    if (pil = 2) and (i mod 2 <> 0) then
      continue;

    //Lewati angka kelipatan 5
    if i mod 5 = 0 then
      continue;

    //Tampilkan angka yang tidak di-continue
    write(i, ' ');
  end;

  writeln;
  readln;
end.