# Program Input Data KTP (C++)

Program ini dibuat menggunakan bahasa pemrograman C++ untuk menerima input data identitas kependudukan dan menampilkan ringkasan data terdaftar dalam format tabel teks terstruktur.

## Penjelasan Teknis Kode

### 1. Penanganan Input dengan `std::getline`
Alih-alih menggunakan operator stream `std::cin >> variabel`, program ini menggunakan `std::getline(std::cin, variabel)` untuk setiap pembacaan input. 

Alasannya adalah `cin >>` hanya membaca data hingga menemukan karakter spasi atau newline pertama, sehingga input yang mengandung spasi (seperti nama lengkap, tempat tanggal lahir, atau alamat) akan terpotong. Dengan `std::getline`, program dapat membaca seluruh baris teks yang dimasukkan pengguna secara lengkap.

### 2. Pemanfaatan Library Standar (`<iostream>` dan `<string>`)
- `<iostream>`: Digunakan untuk menangani stream input (`std::cin`) dan output (`std::cout`, `std::endl`).
- `<string>`: Digunakan untuk tipe data `std::string` agar alokasi memori untuk teks bersifat dinamis tanpa perlu menentukan panjang array karakter secara manual.

### 3. Alur Program
- **Inisialisasi**: Seluruh variabel data kependudukan (NIK, nama, tempat tanggal lahir, jenis kelamin, alamat lengkap hingga RT/RW, agama, status perkawinan, pekerjaan, kewarganegaraan, dan masa berlaku) dideklarasikan sebagai `std::string`.
- **Proses Input**: Data diminta satu per satu secara sekuensial melalui terminal.
- **Pencetakan Hasil**: Data dicetak kembali dalam blok terformat dengan batas garis pemisah agar rapi dan mudah dibaca.

## Cara Kompilasi dan Menjalankan

1. Kompilasi file kode sumber:
   ```bash
   g++ ktp.cpp -o ktp
   ```
   atau
   ```bash
   clang ktp.cpp -o ktp
   ```

2. Jalankan executable hasil kompilasi:
   ```bash
   ./ktp
   ```
