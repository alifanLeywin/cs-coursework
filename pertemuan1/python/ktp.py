# DEKLARASI WARNA & STYLE 
BOLD      = "\033[1m"    #Bold / Tebal
CYAN      = "\033[1;46m" #warna cyan
TEXT_BLACK= "\033[30m"   #Teks Hitam (biar kontras di atas background terang)
YELLOW    = "\033[1;43m" #warna kuning
RESET     = "\033[0m"    #Reset (Wajib ditaruh di akhir biar warna tulisan setelahnya balik normal)

print("Masukkan Informasi Biodata Anda Untuk Membuat KTP\n")

#  INPUT DATA 
# .upper() dipakai agar teks otomatis berubah jadi HURUF KAPITAL semua
nik             = input("Masukkan NIK anda: ")
nama            = input("Masukkan Nama anda: ").upper()
ttl             = input("Masukkan Tempat Tanggal Lahir anda: ").upper()
jenis_kelamin   = input("Masukkan Jenis Kelamin anda: ").upper()
alamat          = input("Masukkan Alamat anda: ").upper()
rt              = input("Masukkan RT anda: ")
rw              = input("Masukkan RW anda: ")
keldes          = input("Masukkan Kelurahan/Desa anda: ").upper()
kec             = input("Masukkan Kecamatan anda: ").upper()
agama           = input("Masukkan Agama anda: ").upper()
status          = input("Masukkan Status Perkawinan anda: ").upper()
pekerjaan       = input("Masukkan Pekerjaan anda: ").upper()
kewarganegaraan = input("Masukkan Kewarganegaraan anda: ").upper()
berlaku         = input("Masukkan Masa Berlaku KTP anda: ").upper()

print("\n")

# menampilkan data yang sudah diinputkan 

# Garis Atas
print(f"{CYAN}┌─────────────────────────────────────────────────────────────┐{RESET}")

# Header Provinsi & Kota
print(f"{CYAN}{TEXT_BLACK}{BOLD}│                   PROVINSI JAWA BARAT                       │{RESET}")
print(f"{CYAN}{TEXT_BLACK}{BOLD}│                       KOTA GARUT                            │{RESET}")

# Garis Pembatas Header
print(f"{CYAN}├─────────────────────────────────────────────────────────────┤{RESET}")

# Isi Data KTP (aku cinta f-string)
print(f"  {YELLOW}{TEXT_BLACK}{BOLD}NIK               : {nik}{RESET}")
print(f"   Nama              : {nama}")
print(f"   Tempat/Tgl Lahir  : {ttl}")
print(f"   Jenis Kelamin     : {jenis_kelamin}")
print(f"   Alamat            : {alamat}")
print(f"      RT/RW          : {rt}/{rw}")
print(f"      Kel/Desa       : {keldes}")
print(f"      Kecamatan      : {kec}")
print(f"   Agama             : {agama}")
print(f"   Status Perkawinan : {status}")
print(f"   Pekerjaan         : {pekerjaan}")
print(f"   Kewarganegaraan   : {kewarganegaraan}")
print(f"   Berlaku Hingga    : {berlaku}")

# Garis Bawah
print(f"{CYAN}└─────────────────────────────────────────────────────────────┘{RESET}")
print("\n")