## Penjelasan Kode

Program ini digunakan untuk menghitung luas segitiga berdasarkan nilai alas dan tinggi yang dimasukkan oleh pengguna. Program menggunakan `iostream` untuk proses input/output dan `iomanip` untuk mengatur format tampilan angka desimal.

---

### 1. Library

```cpp
#include <iostream>
#include <iomanip>
```

* **`<iostream>`**: Menyediakan fasilitas input dan output standar C++, seperti `std::cin` untuk menerima input dan `std::cout` untuk menampilkan output.
* **`<iomanip>`**: Menyediakan *manipulator* untuk mengatur format input/output, seperti `std::fixed` dan `std::setprecision()`.

---

### 2. Deklarasi Variabel dan Tipe Data

```cpp
double alas, tinggi, luas;
```

* **`double`**: Tipe data untuk menyimpan bilangan pecahan (*floating-point*) dengan presisi yang lebih tinggi dibandingkan `float`. Pada implementasi yang umum, `double` berukuran 64-bit dan memiliki sekitar 15–17 digit desimal signifikan.
* `alas`: Menyimpan nilai panjang alas segitiga.
* `tinggi`: Menyimpan nilai tinggi segitiga.
* `luas`: Menyimpan hasil perhitungan luas segitiga.

---

### 3. Input Data

```cpp
std::cin >> alas;
std::cin >> tinggi;
```

* **`std::cin`**: Digunakan untuk membaca data dari *standard input*, yang biasanya berasal dari keyboard.
* Operator **`>>`** memasukkan nilai yang dibaca ke dalam variabel `alas` dan `tinggi`.

---

### 4. Perhitungan Luas

```cpp
luas = 0.5 * alas * tinggi;
```

Baris ini menghitung luas segitiga menggunakan rumus:

**Luas = ½ × alas × tinggi**

Hasil perhitungan kemudian disimpan ke dalam variabel `luas`.

---

### 5. Format Output Desimal

```cpp
std::cout << std::fixed << std::setprecision(4);
std::cout << "Hasil Luas Segitiga     : " << luas << "\n";
```

* **`std::fixed`**: Mengatur agar bilangan ditampilkan dalam notasi desimal tetap (*fixed-point notation*), bukan notasi ilmiah/eksponensial.
* **`std::setprecision(4)`**: Bersama `std::fixed`, mengatur agar angka ditampilkan dengan tepat **4 digit di belakang koma**.

Contohnya, jika hasil perhitungan adalah `15`, maka akan ditampilkan sebagai:

```text
Hasil Luas Segitiga     : 15.0000
```

---

### 6. `return 0`

```cpp
return 0;
```

Menandakan bahwa fungsi `main()` telah selesai dijalankan dengan **status sukses**.
