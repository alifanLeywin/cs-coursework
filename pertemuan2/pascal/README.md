## Penjelasan Kode Pascal

Program ini digunakan untuk menghitung luas segitiga berdasarkan nilai alas dan tinggi yang dimasukkan oleh pengguna. Program menggunakan tipe data `Extended` untuk menyimpan nilai numerik dengan presisi tinggi dan menampilkan hasil dengan 4 digit di belakang koma.

---

### 1. Nama Program

```pascal
program HitungLuasSegitiga;
```

`program` digunakan untuk mendeklarasikan nama program.

Pada kode ini, nama program adalah **`HitungLuasSegitiga`**.

Tanda titik koma (`;`) digunakan sebagai pemisah akhir pernyataan dalam Pascal.

---

### 2. Unit yang Digunakan

```pascal
uses
  Math;
```

`uses` digunakan untuk menyatakan unit atau pustaka yang akan digunakan oleh program.

`Math` merupakan unit yang menyediakan berbagai fungsi matematika.

**Catatan:** Pada program ini, tidak ada fungsi dari unit `Math` yang digunakan secara langsung, sehingga program sebenarnya dapat berjalan tanpa `uses Math`.

---

### 3. Deklarasi Variabel dan Tipe Data

```pascal
var
  alas, tinggi, luas: Extended;
```

`var` digunakan untuk mendeklarasikan variabel yang akan digunakan dalam program.

Ketiga variabel tersebut menggunakan tipe data **`Extended`**, yaitu tipe data *floating-point* yang dapat menyimpan bilangan pecahan dengan presisi tinggi.

* `alas`: Menyimpan nilai panjang alas segitiga.
* `tinggi`: Menyimpan nilai tinggi segitiga.
* `luas`: Menyimpan hasil perhitungan luas segitiga.

Ukuran dan presisi `Extended` dapat berbeda tergantung compiler dan platform yang digunakan, sehingga tidak sebaiknya dianggap selalu memiliki ukuran bit tertentu.

---

### 4. Menampilkan Judul Program

```pascal
writeln('=== PROGRAM MENGHITUNG LUAS SEGITIGA ===');
writeln;
```

`writeln` digunakan untuk menampilkan teks ke layar kemudian berpindah ke baris berikutnya.

`writeln;` tanpa argumen digunakan untuk membuat satu baris kosong.

---

### 5. Input Data

```pascal
write('Masukkan panjang alas   : ');
readln(alas);

write('Masukkan tinggi segitiga : ');
readln(tinggi);
```

* `write` digunakan untuk menampilkan teks tanpa langsung berpindah ke baris berikutnya.
* `readln` digunakan untuk membaca input dari pengguna dan menyimpannya ke dalam variabel.

Nilai yang dimasukkan pertama disimpan dalam `alas`, kemudian nilai berikutnya disimpan dalam `tinggi`.

---

### 6. Perhitungan Luas

```pascal
luas := 0.5 * alas * tinggi;
```

Operator `:=` merupakan **assignment operator** dalam Pascal yang digunakan untuk memberikan nilai ke sebuah variabel.

Baris tersebut menghitung luas segitiga menggunakan rumus:

**Luas = ½ × alas × tinggi**

Hasil perhitungan kemudian disimpan ke dalam variabel `luas`.

---

### 7. Format Output Desimal

```pascal
writeln('Hasil Luas Segitiga     : ', luas:0:4);
```

Bagian:

```pascal
luas:0:4
```

merupakan **format specifier** untuk menampilkan nilai `luas`.

* Angka `0` menentukan lebar minimum bidang tampilan.
* Angka `4` menentukan jumlah **digit di belakang koma**.

Jadi, jika hasil perhitungan adalah `15`, output akan ditampilkan sebagai:

```text
Hasil Luas Segitiga     : 15.0000
```

---

### 8. `readln` di Akhir Program

```pascal
readln;
```

`readln` tanpa variabel digunakan untuk menunggu pengguna menekan **Enter** sebelum program selesai.

Hal ini biasanya digunakan agar jendela terminal tidak langsung tertutup ketika program dijalankan melalui lingkungan tertentu.
