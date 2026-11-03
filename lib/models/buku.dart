class Buku {
  // Atribut private (diawali underscore)
  String _judul;
  String _penulis;
  double _harga;

  // Constructor
  Buku(this._judul, this._penulis, this._harga);

  // Getter
  String get judul => _judul;
  String get penulis => _penulis;
  double get harga => _harga;

  // Setter harga: menolak nilai negatif
  set harga(double nilai) {
    if (nilai < 0) {
      print('Harga tidak boleh negatif! Nilai ditolak.');
      return;
    }
    _harga = nilai;
  }

  // Method info()
  String info() {
    return 'Judul: $_judul | Penulis: $_penulis | Harga: Rp$_harga';
  }
}