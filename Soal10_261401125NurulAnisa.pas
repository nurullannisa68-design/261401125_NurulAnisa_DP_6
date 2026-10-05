{Nama : Nurul Anisa
NIM   : 261401125}

program Soal10_NamaHari;
var
    n:integer;
begin
    write('Masukkan angka (1-7):');
    readln(n);

    case n of
        1:writeln('Hari Senin');
        2:writeln('Hari Selasa');
        3:writeln('Hari Rabu');
        4:writeln('Hari Kamis');
        5:writeln('Hari Jumat');
        6:writeln('Hari Sabtu');
        7:writeln('Hari Minggu');
    else
        writeln('Angka tidak valid!Masukkan 1 sampai 7.');
    end;
end.