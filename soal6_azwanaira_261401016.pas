program Soal6;
uses crt;

var
  tugas, uts, uas, hadir, nilaiAkhir: real;
  indeks: char;

begin
  clrscr;
  write('Masukkan nilai Tugas: '); readln(tugas);
  write('Masukkan nilai UTS  : '); readln(uts);
  write('Masukkan nilai UAS  : '); readln(uas);
  write('Masukkan Kehadiran (%): '); readln(hadir);

 //Hitung nilai akhir sesuai persentase/bobot
  nilaiAkhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);

  //Tentukan indeks huruf berdasarkan nilai akhir
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf: ', indeks);

   //Cek kelulusan: Nilai Akhir >= 60 DAN Kehadiran >= 80%
  if (nilaiAkhir >= 60) and (hadir >= 80) then
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');

  readln;
end.