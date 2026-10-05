{Nama : Nurul Anisa
NIM   : 261401125}

program Soal5_RekapNilai;
uses crt;
var 
    M, N, i, j: integer;
    nilai, jumlah, rata: real;
    lulus, tidakLulus: integer;
    status: string;
begin
    write('Masukkan jumlah mahasiswa (M):');
    readln(M);
    write('Masukkan jumlah tugas (N):');
    readln(N);

    lulus :=0;
    tidakLulus :=0;

    for i := 1 to M do
    begin
        writeln;
        writeln('Mahasiswa ke-',i,' ');
        jumlah := 0;
        for j := 1 to N do
        begin
            write('Nilai tugas ke-',j,':');
            readln(nilai);
            jumlah := jumlah + nilai;
        end;

        rata := jumlah/N;
        if rata >= 65 then 
        begin
            status := 'LULUS';
            inc(lulus);
        end
        else
        begin
            status := 'TIDAK LULUS';
            inc(tidakLulus);
        end;

        writeln('Rata-rata mahasiswa ke-',i, ':', rata:0:2,'(',status,')');
    end;

    writeln;
    writeln('REKAPITULASI');
    writeln('Total mahasiswa LULUS :',lulus);
    writeln('Total mahasiswa TIDAK LULUS:',tidakLulus);
end.