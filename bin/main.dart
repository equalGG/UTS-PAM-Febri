import '../lib/models/buku.dart';
import '../lib/models/buku_digital.dart';

void main() {
  // List bertipe Buku, tapi boleh berisi BukuDigital (polimorfisme)
  List<Buku> daftarBuku = [
    Buku('Laskar Pelangi', 'Andrea Hirata', 85000),
    BukuDigital('Dart untuk Pemula', 'Budi Santoso', 50000, 12.5),
    Buku('Bumi Manusia', 'Pramoedya Ananta Toer', 110000),
    BukuDigital('Belajar Flutter', 'Siti Aminah', 75000, 25.0),
    BukuDigital('Pemrograman OOP', 'Andi Wijaya', 60000, 8.3),
  ];

  print('=== DAFTAR BUKU ===');
  for (Buku b in daftarBuku) {
    print(b.info()); // Dart otomatis memilih info() yang sesuai objeknya
  }

  // Tambahan: uji setter harga
  print('\n=== UJI SETTER HARGA ===');
  Buku uji = daftarBuku[0];
  uji.harga = -5000; // ditolak
  print('Harga setelah set -5000: ${uji.harga}');
  uji.harga = 90000; // diterima
  print('Harga setelah set 90000: ${uji.harga}');
}