program Soal4;
uses crt;

var
  pilihan, a, b: integer;
  x, y: real;
  ulang: char;

begin
  //Perulangan repeat-until agar kalkulator bisa diulang
  repeat
    clrscr;
    writeln('=== MENU KALKULATOR ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih (1-5): ');
    readln(pilihan);

    //Percabangan case-of untuk memilih operasi
    case pilihan of
      1: begin
           write('Angka 1: '); readln(x);
           write('Angka 2: '); readln(y);
           writeln('Hasil: ', (x + y):0:2);
         end;
      2: begin
           write('Angka 1: '); readln(x);
           write('Angka 2: '); readln(y);
           writeln('Hasil: ', (x - y):0:2);
         end;
      3: begin
           write('Angka 1: '); readln(x);
           write('Angka 2: '); readln(y);
           writeln('Hasil: ', (x * y):0:2);
         end;
      4: begin
           write('Angka 1: '); readln(x);
           write('Angka 2: '); readln(y);
           { Cek pembagian dengan nol }
           if y <> 0 then
             writeln('Hasil: ', (x / y):0:2)
           else
             writeln('Tidak bisa bagi dengan 0!');
         end;
      5: begin
           write('Bilangan bulat 1: '); readln(a);
           write('Bilangan bulat 2: '); readln(b);
           if b <> 0 then
           begin
             writeln('Hasil DIV: ', a div b);
             writeln('Hasil MOD: ', a mod b);
           end
           else
             writeln('Tidak bisa bagi dengan 0!');
         end;
    else
      writeln('Pilihan tidak ada!');
    end;

    writeln;
    //Tanyakan ke pengguna apakah ingin mengulang
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't'); //Berhenti jika dijawab T atau
end.