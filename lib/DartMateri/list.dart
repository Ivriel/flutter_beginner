void main(){
  List <int> listNumber =[1,2,3,4,5,6,7];
  List <String> listBuah = ["Apel","Mangga","Melon","Jeruk","Anggur"];
  List ListBebas = ["Ayam",1,true,0.5];

  print(ListBebas[2]);
  print(listBuah[1]);
  print(listNumber[2]);

  print(ListBebas.indexWhere((element) => element == 0.5,));
  print(ListBebas.length);
  print(ListBebas.reversed);
  print(ListBebas.reversed.first);
  print(ListBebas.reversed.last);
  print(ListBebas.first);

  listBuah.forEach((element){
    print(element);
  });
  listNumber.forEach((element){
    print(element);
  });
  ListBebas.forEach((isi){
    print(isi);
  });
}