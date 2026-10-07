CYAN = '\033[96m'
GREEN = '\033[92m'
YELLOW = '\033[93m'
RED = '\033[91m'
BOLD = '\033[1m'
RESET = '\033[0m'

while True:
    
    print(f"{CYAN}{'='*40}")
    print(f"{BOLD}    PENGHITUNG LUAS SEGITIGA    ")
    print(f"{'='*40}{RESET}\n")

    try:
        alas = float(input(f"{YELLOW} Masukkan panjang alas   : {RESET}"))
        tinggi = float(input(f"{YELLOW} Masukkan tinggi segitiga: {RESET}"))
        
        if alas <= 0 or tinggi <= 0:
            print(f"\n{RED} Angka harus lebih dari 0{RESET}")
        else:
            luas = 0.5 * alas * tinggi
            print(f"\n{GREEN}{'—'*40}")
            print(f" Hasil: Luas Segitiga = {BOLD}{luas:.2f}{RESET}")
            print(f"{GREEN}{'—'*40}{RESET}")

    except ValueError:
        print(f"\n{RED}Input ngasal! Masukkin angka, bukan huruf.{RESET}") 

    ulang = input("\nHitung lagi? (y/n): ").lower()
    if ulang != 'y':
        print(f"\n{CYAN}Sip, thanks udah nyobain! {RESET}")
        break