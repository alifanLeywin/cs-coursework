## Penjelasan Kode Python

Program ini digunakan untuk menghitung luas segitiga secara interaktif melalui terminal. Program dilengkapi dengan validasi input, tampilan berwarna menggunakan **ANSI Escape Codes**, penanganan kesalahan input, serta perulangan agar pengguna dapat menghitung kembali tanpa menjalankan ulang program.

---

### 1. Warna Terminal (ANSI Escape Codes)

```python
CYAN = '\033[96m'
GREEN = '\033[92m'
YELLOW = '\033[93m'
RED = '\033[91m'
BOLD = '\033[1m'
RESET = '\033[0m'
```

Variabel-variabel tersebut berisi **ANSI Escape Codes** yang digunakan untuk memberikan format pada teks di terminal, seperti warna dan cetak tebal.

* `CYAN`, `GREEN`, `YELLOW`, dan `RED` digunakan untuk memberikan warna berbeda pada teks.
* `BOLD` digunakan untuk membuat teks menjadi tebal.
* `RESET` digunakan untuk mengembalikan format terminal ke kondisi normal agar formatting sebelumnya tidak memengaruhi teks berikutnya.

---

### 2. Perulangan Program

```python
while True:
```

`while True` membuat program menjalankan perulangan tanpa batas secara langsung.

Perulangan akan terus berjalan sampai program menjalankan perintah `break`, yaitu ketika pengguna memilih untuk tidak menghitung lagi.

---

### 3. Input dan Validasi Data

```python
try:
    alas = float(input(...))
    tinggi = float(input(...))
```

* `input()` digunakan untuk menerima masukan dari pengguna. Nilai yang dikembalikan oleh `input()` berupa **string**.
* `float()` digunakan untuk mengonversi string tersebut menjadi nilai bertipe `float`.
* Pada implementasi CPython yang umum, `float` menggunakan format **double-precision floating-point 64-bit**.

Blok tersebut berada di dalam `try` untuk menangani kemungkinan kesalahan ketika input tidak dapat dikonversi menjadi `float`.

```python
except ValueError:
    print(...)
```

`ValueError` terjadi ketika nilai yang diberikan tidak dapat dikonversi menjadi `float`, misalnya ketika pengguna memasukkan teks seperti `abc`.

Dengan `try-except`, program dapat menampilkan pesan kesalahan tanpa langsung berhenti (*crash*).

---

### 4. Validasi Nilai dan Perhitungan

```python
if alas <= 0 or tinggi <= 0:
    print(...)
else:
    luas = 0.5 * alas * tinggi
```

Kondisi tersebut memastikan bahwa nilai `alas` dan `tinggi` harus lebih besar dari `0`.

Operator `or` berarti kondisi akan dianggap benar jika **salah satu atau kedua nilai** tidak memenuhi syarat.

Jika kedua nilai valid, program menghitung luas segitiga menggunakan rumus:

**Luas = ½ × alas × tinggi**

Hasilnya kemudian disimpan dalam variabel `luas`.

---

### 5. Format Output Desimal

```python
print(f" Hasil: Luas Segitiga = {BOLD}{luas:.2f}{RESET}")
```

Kode tersebut menggunakan **f-string (formatted string literal)** untuk memasukkan nilai variabel ke dalam teks sekaligus mengatur format tampilannya.

Bagian:

```python
{luas:.2f}
```

berarti nilai `luas` ditampilkan dalam format desimal dengan **2 digit di belakang koma**.

Contohnya, jika hasil perhitungan adalah `15`, maka akan ditampilkan sebagai:

```text
15.00
```

---

### 6. Mengulang atau Mengakhiri Program

```python
ulang = input("\nHitung lagi? (y/n): ").lower()

if ulang != 'y':
    break
```

* `input()` meminta pengguna menentukan apakah ingin melakukan perhitungan lagi.
* `.lower()` mengubah teks menjadi huruf kecil sehingga input seperti `Y` akan diubah menjadi `y`.
* Jika hasil input bukan `'y'`, perintah `break` dijalankan dan menghentikan perulangan `while`.

Dengan demikian, program akan terus melakukan perhitungan selama pengguna memasukkan `y`.
