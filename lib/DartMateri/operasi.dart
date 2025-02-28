void main() {
  int number1,number2;
  number1=5;
  number2=2;
  print('Penjumlahan: ${number1+number2}');
  print('Pengurangan: ${number1-number2}');
  print('Perkalian: ${number1*number2}');
  print('Pembagian: ${number1/number2}');
  print('Sisa bagi: ${number1%number2}');
  number1 = number1 + 1;
  number1++;
  number1 +=2;
  print('Increment: ${number1}');
  number2 = number2 - 1;
  number2--;
  number2 -=2;
  print('Decrement: ${number2--}');
}