{Nama : Nurul Anisa
NIM   : 261401125}

program Soal3_DeretAngka;
var
  N, pilihan, i: integer;
begin
  write('Masukkan nilai N: ');
  readln(N);
  writeln('Pilih kategori deret (1: Ganjil, 2: Genap)');
  write('Pilihan: ');
  readln(pilihan);

  if (pilihan <> 1) and (pilihan <> 2) then
  begin
    writeln('Pilihan tidak valid!');
    exit;
  end;

  writeln('Hasil deret:');
  i := 0;
  while i < N do
  begin
    inc(i);
    if (pilihan = 1) and (i mod 2 = 0) then continue;
    if (pilihan = 2) and (i mod 2 <> 0) then continue;

    if i mod 5 = 0 then continue;

    write(i, ' ');
  end;
  writeln;
end.
