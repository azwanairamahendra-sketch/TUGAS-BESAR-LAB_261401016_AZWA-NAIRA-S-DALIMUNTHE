program Soal9;
uses crt;

var
  tahun, bulan, hari: integer;

begin
  clrscr;
  write('Masukkan Tahun: '); readln(tahun);
  write('Masukkan Bulan (1-12): '); readln(bulan);

  //Tentukan jumlah hari menggunakan case-of
  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11: hari := 30;
    2: begin
         //Cek apakah tahun kabisat (habis dibagi 400 ATAU habis dibagi 4 tapi tidak habis dibagi 100)
         if (tahun mod 400 = 0) or ((tahun mod 4 = 0) 
         and (tahun mod 100 <> 0)) then
           hari := 29
         else
           hari := 28;
       end;
  else
    writeln('Bulan tidak valid!');
  end;

  writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah ', hari, ' hari.');
  readln;
end.