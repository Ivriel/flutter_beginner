void main() {

    int hasilPenjumlahan =   penjumlahan(10,5);
    hasilPenjumlahan+=2;
    print("hasil diluar function (main) = $hasilPenjumlahan");
        pengurangan(10,5);
}
    int penjumlahan(int angka1, int angka2){
      int hasil = angka1+angka2;
      print("hasil didalam function $hasil");
      return hasil;
    }
    void pengurangan(int angka1, int angka2){
      print(angka1-angka2);
    }

