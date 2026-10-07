program HitungLuasSegitiga;

const

  RESET   = #27'[0m';
  
  BOLD    = #27'[1m';
  CYAN    = #27'[1;36m';
  GREEN   = #27'[1;32m';
  YELLOW  = #27'[1;33m';
  WHITE   = #27'[1;37m';
  GRAY    = #27'[0;90m';

var
  alas, tinggi, luas: Extended;

begin

  write(#27'[2J'#27'[H');


  writeln(CYAN, '==============================================', RESET);
  writeln(CYAN, '    PROGRAM MENGHITUNG LUAS SEGITIGA          ', RESET);
  writeln(CYAN, '==============================================', RESET);
  writeln;


  write(WHITE, '  [+] Masukkan panjang alas   : ', YELLOW);
  readln(alas);

  write(WHITE, '  [+] Masukkan tinggi segitiga : ', YELLOW);
  readln(tinggi);


  luas := 0.5 * alas * tinggi;

  writeln;
  writeln(GRAY, '----------------------------------------------', RESET);

  writeln(GREEN, BOLD, '  [=] Hasil Luas Segitiga     : ', luas:0:4, RESET);
  writeln(GRAY, '----------------------------------------------', RESET);

  writeln;
  write(GRAY, 'Tekan Enter untuk keluar...', RESET);
  readln;
end.