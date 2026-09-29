#include <iostream>
#include <string>

int main() {
    // Declare string variables for KTP fields
    std::string nik;
    std::string nama;
    std::string tempatTanggalLahir;
    std::string jeniskelamin;
    std::string alamat;
    std::string rt;
    std::string rw;
    std::string kelurahan;
    std::string kecamatan;
    std::string agama;
    std::string statusPerkawinan;
    std::string pekerjaan;
    std::string kewarganegaraan;
    std::string berlaku;

    // Input KTP Data
    std::cout << "=== INPUT DATA KTP ===" << std::endl;

    std::cout << "Masukkan NIK: ";
    std::getline(std::cin, nik);

    std::cout << "Masukkan Nama Lengkap: ";
    std::getline(std::cin, nama);

    std::cout << "Masukkan Tempat/Tgl Lahir: ";
    std::getline(std::cin, tempatTanggalLahir);

    std::cout << "Masukkan Jenis Kelamin: ";
    std::getline(std::cin, jeniskelamin);

    std::cout << "Masukkan Alamat: ";
    std::getline(std::cin, alamat);

    std::cout << "Masukkan RT: ";
    std::getline(std::cin, rt);

    std::cout << "Masukkan RW: ";
    std::getline(std::cin, rw);

    std::cout << "Masukkan Kelurahan: ";
    std::getline(std::cin, kelurahan);

    std::cout << "Masukkan Kecamatan: ";
    std::getline(std::cin, kecamatan);

    std::cout << "Masukkan Agama: ";
    std::getline(std::cin, agama);

    std::cout << "Masukkan Status Perkawinan: ";
    std::getline(std::cin, statusPerkawinan);

    std::cout << "Masukkan Pekerjaan: ";
    std::getline(std::cin, pekerjaan);

    std::cout << "Masukkan Kewarganegaraan: ";
    std::getline(std::cin, kewarganegaraan);

    std::cout << "Masukkan Masa Berlaku: ";
    std::getline(std::cin, berlaku);

    // Display Output
    std::cout << "\n===================================" << std::endl;
    std::cout << "         DATA KTP TERDAFTAR        " << std::endl;
    std::cout << "===================================" << std::endl;
    std::cout << "NIK               : " << nik << std::endl;
    std::cout << "Nama              : " << nama << std::endl;
    std::cout << "Tempat/Tgl Lahir  : " << tempatTanggalLahir << std::endl;
    std::cout << "Jenis Kelamin     : " << jeniskelamin << std::endl;
    std::cout << "Alamat            : " << alamat << std::endl;
    std::cout << "RT/RW             : " << rt << "/" << rw << std::endl;
    std::cout << "Kelurahan         : " << kelurahan << std::endl;
    std::cout << "Kecamatan         : " << kecamatan << std::endl;
    std::cout << "Agama             : " << agama << std::endl;
    std::cout << "Status Perkawinan : " << statusPerkawinan << std::endl;
    std::cout << "Pekerjaan         : " << pekerjaan << std::endl;
    std::cout << "Kewarganegaraan   : " << kewarganegaraan << std::endl;
    std::cout << "Berlaku Hingga    : " << berlaku << std::endl;
    std::cout << "===================================" << std::endl;

    return 0;
}