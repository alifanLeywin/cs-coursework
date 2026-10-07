#include <iostream>
#include <iomanip> 

int main() {
    double alas, tinggi, luas;

    std::cout << "=== MENGHITUNG LUAS SEGITIGA ===\n\n";

    std::cout << "Masukkan panjang alas   : ";
    std::cin >> alas;

    std::cout << "Masukkan tinggi segitiga : ";
    std::cin >> tinggi;

    luas = 0.5 * alas * tinggi;

    std::cout << "\n----------------------------------------\n";


    std::cout << std::fixed << std::setprecision(4);
    std::cout << "Hasil Luas Segitiga     : " << luas << "\n";

    return 0;
}