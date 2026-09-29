# Program Input dan Format KTP (Python)

Program ini dibuat untuk menerima input data identitas kependudukan melalui terminal dan menampilkannya kembali dalam bentuk format visual Kartu Tanda Penduduk (KTP).

## Penjelasan Teknis Kode

### 1. Pewarnaan Terminal Menggunakan ANSI Escape Codes
Pada file `ktp.py`, terdapat deklarasi variabel warna di bagian awal:
- `BOLD` (`\033[1m`): Membuat teks menjadi tebal.
- `CYAN` (`\033[1;46m`): Memberikan latar belakang warna cyan terang pada bagian header provinsi dan kota agar menyerupai warna blangko KTP.
- `TEXT_BLACK` (`\033[30m`): Mengubah warna teks menjadi hitam agar kontras dan terbaca jelas saat berada di atas latar belakang terang.
- `YELLOW` (`\033[1;43m`): Memberikan sorotan latar kuning pada baris NIK.
- `RESET` (`\033[0m`): Menyetel ulang seluruh format styling dan warna terminal kembali ke pengaturan default sistem. Karakter ini penting diletakkan di akhir setiap baris output agar efek warna tidak berlanjut ke teks berikutnya.

### 2. Standardisasi Teks dengan `.upper()`
Setiap fungsi `input()` untuk data teks (seperti nama, tempat tanggal lahir, alamat, kecamatan, hingga pekerjaan) langsung diproses menggunakan method `.upper()`. Tujuannya agar seluruh data yang dimasukkan pengguna otomatis berubah menjadi huruf kapital, menyesuaikan standar penulisan identitas resmi pada KTP.

### 3. Layout dan Box-Drawing
Penyusunan tampilan kartu menggunakan kombinasi fitur f-string Python dan karakter Unicode box-drawing (`┌`, `─`, `│`, `├`, `└`). Hal ini memungkinkan output data tersusun rapi di dalam bingkai menyerupai kartu fisik secara proporsional di terminal.

## Cara Menjalankan

Jalankan perintah berikut pada terminal:

```bash
python3 ktp.py
```
atau
```bash
uv run ktp.py (jika menggunakan uv)
```
