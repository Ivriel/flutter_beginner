void main(){
  Map <String,int> mapNumber = {
    'one': 1,
    'two': 2,
    'three': 3,
  };
  print(mapNumber['two']);
  Map <String,dynamic> mapDynamic = {
    'one': 1,
    'two': 2,
    'three': 3,
  };
  print(mapDynamic['one']);
    Map <dynamic,dynamic> mapBebas = {
    'one': 1,
    62:'Indonesia',
    'status': true,
    false:'Salah'
  };
  print(mapBebas['status']);
  print(mapBebas.length);
  print(mapBebas.containsValue('t'));
  print(mapBebas.containsKey(62));
  mapBebas.forEach((key,value){
    print('$key : $value');
  });
}