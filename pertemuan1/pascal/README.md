# Program Input dan Format KTP (Pascal)

Program ini mengimplementasikan penerimaan input biodata identitas kependudukan dan pencetakan struktur KTP menggunakan bahasa pemrograman Free Pascal di terminal.

## Penjelasan Teknis Kode

### 1. Penggunaan ANSI Escape Codes dengan Karakter `#27`
Dalam Free Pascal, karakter escape didefinisikan menggunakan kode ASCII `#27`. Kode ini digabungkan dengan format ANSI untuk mengatur tampilan teks dan latar belakang:
- `#27'[1m'`: Menghasilkan teks tebal.
- `#27'[1;96m'` dan `#27'[46m'`: Mengatur warna garis bingkai serta warna latar belakang cyan pada header.
- `#27'[90m'`: Memberikan warna abu-abu (gray) pada label field agar data utama lebih menonjol.
- `#27'[1;97m'`: Memberikan warna putih terang pada nilai data input pengguna.
- `#27'[0m'`: Mereset warna terminal kembali normal.

### 2. Penggunaan Directive `{$mode objfpc}{$H+}`
- `{$mode objfpc}`: Mengaktifkan mode sintaks Object Pascal standar compiler FPC.
- `{$H+}`: Mengaktifkan tipe data `AnsiString` secara default untuk tipe `string`. Hal ini mencegah batas maksimal 255 karakter bawaan dari shortstring klasik, sehingga input alamat atau teks panjang tidak terpotong.

### 3. Konversi Huruf Kapital dengan `UpCase()`
Setiap data teks yang dibaca via `ReadLn` langsung diproses menggunakan fungsi `UpCase(variabel)`. Tujuannya agar seluruh data yang disimpan dan dicetak berformat huruf kapital seragam.

### 4. Pembentukan Bingkai Tampilan
Program memanfaatkan karakter Unicode box-drawing (`┌`, `─`, `│`, `├`, `└`) untuk menggambar border kartu KTP secara terstruktur di console.

## Cara Kompilasi dan Menjalankan

1. Kompilasi file kode sumber:
   ```bash
   fpc ktp.pas
   ```

2. Jalankan binary hasil kompilasi:
   ```bash
   ./ktp
   ```
