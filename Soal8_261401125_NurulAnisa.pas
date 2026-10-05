{Nama : Nurul Anisa
NIM   261401125}

program Soal8_GajiKaryawan;
const
   JAM_STANDAR = 40;
   TARIF_LEMBUR = 20000;
var 
   gol  : char;
   jam,lemburJam : integer;
   pokok,lembur,bonus,total:longint;
   valid:boolean;
begin
    write('Masukkan golongan (A/B/C):');
    readln(gol);
    gol:= UpCase(gol);
    write('Masukkan total jam kerja per minggu:');
    readln(jam);

    valid:=true;
    pokok:=0;
    case gol of
        'A': pokok := 1500000;
        'B': pokok := 2000000;
        'C': pokok := 2500000;
    else
        valid := false;
    end;

    if not valid then
    begin
        writeln('Golongan tidak valid!');
        exit;
    end;

    if jam > JAM_STANDAR then 
        lemburJam := jam - JAM_STANDAR
    else
        lemburJam:= 0;
    lembur := lemburJam*TARIF_LEMBUR;

    bonus := 0;
    if (gol ='C') and (jam >50) then
        bonus := 100000;

    total := pokok + lembur + bonus;

    writeln;
    writeln('RINCIAN GAJI');
    writeln('Golongan  :',gol);
    writeln('Gaji Pokok:Rp',pokok);
    writeln('Lembur    :Rp', lembur,'(',lemburJam,'jam)');
    writeln('Bonus     :Rp',bonus);
    writeln('Total Gaji:Rp',total);
end.