program Soal5;
uses crt;

var
  M, N, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
  clrscr;
  write('Jumlah Mahasiswa (M): '); readln(M);
  write('Jumlah Tugas (N): '); readln(N);
  writeln;

  lulus := 0;
  tidakLulus := 0;

  //Loop luar untuk data tiap mahasiswa
  for i := 1 to M do
  begin
    writeln('Mahasiswa ke-', i);
    total := 0;

    //Loop dalam untuk menginput nilai tugas tiap mahasiswa
    for j := 1 to N do
    begin
      write('  Nilai tugas ', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

     //Hitung rata-rata nilai
    rata := total / N;
    write('  Rata-rata = ', rata:0:2, ' -> ');

    //Cek status kelulusan
    if rata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
    writeln;
  end;

  //Tampilkan total mahasiswa yang lulus dan tidak lulus
  writeln('Total Mahasiswa LULUS: ', lulus);
  writeln('Total Mahasiswa TIDAK LULUS: ', tidakLulus);

  readln;
end.