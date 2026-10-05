{Nama : Nurul Anisa
NIM   : 261401125}

program Soal2_Login;
const
  PASSWORD_RAHASIA = 'Nurulhebat!';
  MAKS_PERCOBAAN   = 3;
var
  input: string;
  percobaan: integer;
  berhasil: boolean;
begin
  percobaan := 0;
  berhasil  := false;

  repeat
    inc(percobaan);
    write('Masukkan kata sandi (percobaan ', percobaan, '/', MAKS_PERCOBAAN, '): ');
    readln(input);

    if input = PASSWORD_RAHASIA then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else if percobaan < MAKS_PERCOBAAN then
      writeln('Kata sandi salah, coba lagi.');
  until percobaan >= MAKS_PERCOBAAN;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.
