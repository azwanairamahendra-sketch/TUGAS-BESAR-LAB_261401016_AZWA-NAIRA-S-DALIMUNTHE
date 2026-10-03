program Soal7;
uses crt;

var
  kode: char;
  jam: integer;
  total: real;

begin
  clrscr;
  write('Kode Kendaraan (M/K/B): '); readln(kode);
  write('Lama Parkir (jam): '); readln(jam);

  kode := upcase(kode); //Mengubah huruf kecil menjadi huruf besar

  //Hitung tarif parkir dengan case-of
  case kode of
    'M': begin { Mobil }
           if jam > 10 then
             total := 30000 { Tarif flat/maksimal }
           else if jam > 1 then
             total := 5000 + ((jam - 1) * 3000) 
             //Jam pertama Rp5.000 + sisanya Rp3.000/jam
           else
             total := 5000;
         end;
    'K': begin 
    //Motor
           if jam > 10 then
             total := 10000 
              //Tarif flat/maksimal
           else if jam > 1 then
             total := 2000 + ((jam - 1) * 1000) 
             //Jam pertama Rp2.000 + sisanya Rp1.000/jam
           else
             total := 2000;
         end;
    'B': begin { Bus }
           if jam > 10 then
             total := 50000 { Tarif flat/maksimal }
           else if jam > 1 then
             total := 10000 + ((jam - 1) * 5000)
              //Jam pertama Rp10.000 + sisanya Rp5.000/jamm
           else
             total := 10000;
         end;
  else
    writeln('Kode kendaraan salah!');
  end;

  writeln('Total bayar parkir: Rp ', total:0:0);
  readln;
end.