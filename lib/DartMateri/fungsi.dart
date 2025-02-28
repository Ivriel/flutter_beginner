void main(){
garis();
kota('Malang');
garis();
favfood('Indomie', 'Nasi Goreng', 'Sate');
garis();
print(hitungPenjumlahan(2,10));
garis();
print(hitungPembagian(2,10));
garis();
print(hitungPerkalian(4, 2));
garis();
cetakNama('Ivriel');
garis();
}
void garis(){
  print('----------------');
}
void kota(String city) {
  print('Saya tinggal di $city');
}
void favfood(String food1,String food2,String food3) {
  print("Makanan Favorit saya adalah $food1 dan $food2 juga $food3. Jadi saya suka ${food1+","+food2+", dan "+food3}");
}
int hitungPenjumlahan(int nilaia, int nilaib){
  var hasil = nilaia+nilaib;
  return hasil;
}
double hitungPembagian(double nilaia,double nilaib){
  return nilaia/ nilaib;
}
double hitungPerkalian(double nilaia,double nilaib) => nilaia*nilaib;
void cetakNama(String nama) => print(nama);