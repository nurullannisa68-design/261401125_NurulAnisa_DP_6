{Nama: Nurul Anisa
NIM : 261401125}

program Soal9_JumlahHari;
var
  tahun, bulan, hari: integer;
  kabisat: boolean;
begin
  write('Masukkan tahun : ');
  readln(tahun);
  write('Masukkan bulan (1-12) : ');
  readln(bulan);

  if (bulan < 1) or (bulan > 12) then
  begin
    writeln('Nomor bulan tidak valid!');
    exit;
  end;

  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11: hari := 30;
    2: if kabisat then hari := 29 else hari := 28;
  end;

  writeln;
  if kabisat then
    writeln('Tahun ', tahun, ' adalah tahun kabisat.')
  else
    writeln('Tahun ', tahun, ' bukan tahun kabisat.');
  writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' = ', hari, ' hari');
end.
