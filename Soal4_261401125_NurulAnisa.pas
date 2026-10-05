{Nama : Nurul Anisa
NIM   : 261401125}

program Soal4_Kalkulator;
var
  pilih: integer;
  a, b: real;
  ulang: char;
begin
  repeat
    writeln;
    writeln('KALKULATOR SEDERHANA');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilih);

    if (pilih >= 1) and (pilih <= 5) then
    begin
      write('Masukkan angka pertama : ');
      readln(a);
      write('Masukkan angka kedua   : ');
      readln(b);
    end;

    case pilih of
      1: writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', a + b:0:2);
      2: writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', a - b:0:2);
      3: writeln('Hasil: ', a:0:2, ' * ', b:0:2, ' = ', a * b:0:2);
      4: if b = 0 then
           writeln('Error: pembagian dengan nol tidak diperbolehkan!')
         else
           writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', a / b:0:2);
      5: if trunc(b) = 0 then
           writeln('Error: pembagian dengan nol tidak diperbolehkan!')
         else
         begin
           writeln('Hasil: ', trunc(a), ' DIV ', trunc(b), ' = ', trunc(a) div trunc(b));
           writeln('Hasil: ', trunc(a), ' MOD ', trunc(b), ' = ', trunc(a) mod trunc(b));
         end;
    else
      writeln('Pilihan menu tidak valid!');
    end;

    write('Apakah ingin melakukan perhitungan lagi?(Y/T) ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't');

  writeln('Terima kasih!');
end.