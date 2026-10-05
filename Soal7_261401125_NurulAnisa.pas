{Nama : Nurul Anisa
NIM   : 261401125}

program Soal7_TarifParkir;
var
  kode: char;
  jam: integer;
  tarif: longint;
begin
  writeln('PROGRAM TARIF PARKIR');
  write('Kode kendaraan (M/K/B): ');
  readln(kode);
  write('Lama parkir (jam): ');
  readln(jam);
  case kode of
    'M':
      begin
        if jam <= 1 then
          tarif := 5000
        else if jam > 10 then
          tarif := 30000
        else
          tarif := 5000 + (jam - 1) * 3000;
      end;
    'K':
      begin
        if jam <= 1 then
          tarif := 2000
        else if jam > 10 then
          tarif := 10000
        else
          tarif := 2000 + (jam - 1) * 1000;
      end;
    'B':
      begin
        if jam <= 1 then
          tarif := 10000
        else if jam > 10 then
          tarif := 50000
        else
          tarif := 10000 + (jam - 1) * 5000;
      end;
  else
    begin
      writeln('Kode kendaraan tidak valid.');
      exit;
    end;
  end;
  writeln('Total tarif parkir = Rp', tarif);
end.