program Soal8;
uses crt;

var
  gol: char;
  jam, lembur: integer;
  gajiPokok, gajiLembur, bonus, total: real;

begin
  clrscr;
  write('Masukkan Golongan (A/B/C): '); readln(gol);
  write('Masukkan Jumlah Jam Kerja : '); readln(jam);

  gol := upcase(gol); //Ubah ke huruf kapital

  // Menentukan gaji pokok berdasarkan golongan
  if gol = 'A' then
    gajiPokok := 1500000
  else if gol = 'B' then
    gajiPokok := 2000000
  else if gol = 'C' then
    gajiPokok := 2500000
  else
    gajiPokok := 0;

  // Hitung jam lembur jika jam kerja lebih dari 40 jam
  if jam > 40 then
    lembur := jam - 40
  else
    lembur := 0;

  gajiLembur := lembur * 20000; //Lembur Rp20.000/jam

  // Bonus khusus Golongan C jika jam kerja > 50 jam 
  if (gol = 'C') and (jam > 50) then
    bonus := 100000
  else
    bonus := 0;

  //Total gaji keseluruhan
  total := gajiPokok + gajiLembur + bonus;

  //Tampilkan rincian gaji
  writeln;
  writeln('Gaji Pokok : Rp ', gajiPokok:0:0);
  writeln('Gaji Lembur: Rp ', gajiLembur:0:0);
  writeln('Bonus      : Rp ', bonus:0:0);
  writeln('Total Gaji : Rp ', total:0:0);

  readln;
end.