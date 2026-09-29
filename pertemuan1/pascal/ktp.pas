program InputKTP;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
  nik, nama, ttl, jenis_kelamin, alamat, rt, rw: string;
  keldes, kec, agama, status, pekerjaan, kewarganegaraan, berlaku: string;

  // Deklarasi Warna ANSI
  BOLD, BRIGHT_CYAN, BRIGHT_YELLOW, BRIGHT_WHITE: string;
  GRAY, BG_CYAN, TEXT_BLACK, RESET: string;

begin
  // Set nilai variabel warna
  BOLD          := #27'[1m';
  BRIGHT_CYAN   := #27'[1;96m';
  BRIGHT_YELLOW := #27'[1;93m';
  BRIGHT_WHITE  := #27'[1;97m';
  GRAY          := #27'[90m';
  BG_CYAN       := #27'[46m';
  TEXT_BLACK    := #27'[30m';
  RESET         := #27'[0m';

  WriteLn('Masukkan Informasi Biodata Anda Untuk Membuat KTP');
  WriteLn;

  // Input Data
  Write('Masukkan NIK anda: '); ReadLn(nik);
  Write('Masukkan Nama anda: '); ReadLn(nama); nama := UpCase(nama);
  Write('Masukkan Tempat Tanggal Lahir anda: '); ReadLn(ttl); ttl := UpCase(ttl);
  Write('Masukkan Jenis Kelamin anda: '); ReadLn(jenis_kelamin); jenis_kelamin := UpCase(jenis_kelamin);
  Write('Masukkan Alamat anda: '); ReadLn(alamat); alamat := UpCase(alamat);
  Write('Masukkan RT anda: '); ReadLn(rt);
  Write('Masukkan RW anda: '); ReadLn(rw);
  Write('Masukkan Kelurahan/Desa anda: '); ReadLn(keldes); keldes := UpCase(keldes);
  Write('Masukkan Kecamatan anda: '); ReadLn(kec); kec := UpCase(kec);
  Write('Masukkan Agama anda: '); ReadLn(agama); agama := UpCase(agama);
  Write('Masukkan Status Perkawinan anda: '); ReadLn(status); status := UpCase(status);
  Write('Masukkan Pekerjaan anda: '); ReadLn(pekerjaan); pekerjaan := UpCase(pekerjaan);
  Write('Masukkan Kewarganegaraan anda: '); ReadLn(kewarganegaraan); kewarganegaraan := UpCase(kewarganegaraan);
  Write('Masukkan Masa Berlaku KTP anda: '); ReadLn(berlaku); berlaku := UpCase(berlaku);

  WriteLn; WriteLn;

  // Cetak KTP
  WriteLn(BRIGHT_CYAN + '┌─────────────────────────────────────────────────────────────┐' + RESET);
  WriteLn(BRIGHT_CYAN + '│' + BG_CYAN + TEXT_BLACK + BOLD + '                   PROVINSI JAWA BARAT                       ' + RESET + BRIGHT_CYAN + '│' + RESET);
  WriteLn(BRIGHT_CYAN + '│' + BG_CYAN + TEXT_BLACK + BOLD + '                       KOTA GARUT                             ' + RESET + BRIGHT_CYAN + '│' + RESET);
  WriteLn(BRIGHT_CYAN + '├─────────────────────────────────────────────────────────────┤' + RESET);
  WriteLn('  ' + BRIGHT_YELLOW + 'NIK               : ' + nik + RESET);
  WriteLn('   ' + GRAY + 'Nama              :' + RESET + ' ' + BRIGHT_WHITE + nama + RESET);
  WriteLn('   ' + GRAY + 'Tempat/Tgl Lahir  :' + RESET + ' ' + BRIGHT_WHITE + ttl + RESET);
  WriteLn('   ' + GRAY + 'Jenis Kelamin     :' + RESET + ' ' + BRIGHT_WHITE + jenis_kelamin + RESET);
  WriteLn('   ' + GRAY + 'Alamat            :' + RESET + ' ' + BRIGHT_WHITE + alamat + RESET);
  WriteLn('      ' + GRAY + 'RT/RW          :' + RESET + ' ' + BRIGHT_WHITE + rt + '/' + rw + RESET);
  WriteLn('      ' + GRAY + 'Kel/Desa       :' + RESET + ' ' + BRIGHT_WHITE + keldes + RESET);
  WriteLn('      ' + GRAY + 'Kecamatan      :' + RESET + ' ' + BRIGHT_WHITE + kec + RESET);
  WriteLn('   ' + GRAY + 'Agama             :' + RESET + ' ' + BRIGHT_WHITE + agama + RESET);
  WriteLn('   ' + GRAY + 'Status Perkawinan :' + RESET + ' ' + BRIGHT_WHITE + status + RESET);
  WriteLn('   ' + GRAY + 'Pekerjaan         :' + RESET + ' ' + BRIGHT_WHITE + pekerjaan + RESET);
  WriteLn('   ' + GRAY + 'Kewarganegaraan   :' + RESET + ' ' + BRIGHT_WHITE + kewarganegaraan + RESET);
  WriteLn('   ' + GRAY + 'Berlaku Hingga    :' + RESET + ' ' + BRIGHT_WHITE + berlaku + RESET);
  WriteLn(BRIGHT_CYAN + '└─────────────────────────────────────────────────────────────┘' + RESET);
end.