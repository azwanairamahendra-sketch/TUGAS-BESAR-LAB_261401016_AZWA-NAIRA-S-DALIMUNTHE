program Soal10;
uses crt;

var
  angka: integer;

begin
  clrscr;
  write('Input: ');
  readln(angka);

  write('Output: ');
  //Mencocokkan angka dengan nama hari menggunakan case-of
  case angka of
    1: writeln('"Hari Senin"');
    2: writeln('"Hari Selasa"');
    3: writeln('"Hari Rabu"');
    4: writeln('"Hari Kamis"');
    5: writeln('"Hari Jumat"');
    6: writeln('"Hari Sabtu"');
    7: writeln('"Hari Minggu"');
  else
    writeln('Input salah! Masukkan angka 1 - 7');
  end;

  readln;
end.