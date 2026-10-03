program Soal2;
uses crt;

var
  pwd: string;
  salah: integer;

begin
  clrscr;
  salah := 0;
//menggunakan repeat untuk membatasi percobaan memasukkan pwd
  repeat
    write('Masukkan kata sandi: ');
    readln(pwd);
    salah := salah + 1;

 //sampai 3 kali percobaan kalau lewat 3x akses ngga akan ada.
    if pwd = 'pascal123' then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break; 
      //berhenti kalau sudah benar
    end
    else
    begin
      if salah < 3 then
        writeln('Password salah, coba lagi!')
      else
        writeln('Akses Ditolak! Akun Terkunci.');
    end;
  until salah = 3;
  //batas pengulangan sampai 3x

  readln;
end.