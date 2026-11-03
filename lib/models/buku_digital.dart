import 'buku.dart';

class BukuDigital extends Buku {
  double ukuranMb;

  BukuDigital(String judul, String penulis, double harga, this.ukuranMb)
      : super(judul, penulis, harga);

  @override
  String info() {
    return '${super.info()} | Ukuran: $ukuranMb MB';
  }
}