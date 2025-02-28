import 'dart:io';

void main() {
  bool isRunning = true; 

  while (isRunning) {
    print("Kalkulator Dart");

    print("Masukkan angka pertama:");
    String inputNumber = stdin.readLineSync()!;
    int number1 = int.parse(inputNumber);

    print("Masukkan angka kedua:");
    String inputNumber2 = stdin.readLineSync()!;
    int number2 = int.parse(inputNumber2);

    print("Masukkan operator (+, -, *, /):");
    String inputOperator = stdin.readLineSync()!;
    switch (inputOperator) {
      case "/":
        print("Hasil Pembagian: ${number1 / number2}");
        break;
      case "*":
        print("Hasil Perkalian: ${number1 * number2}");
        break;
      case "+":
        print("Hasil Penjumlahan: ${number1 + number2}");
        break;
      case "-":
        print("Hasil Pengurangan: ${number1 - number2}");
        break;
      default:
        print("Operator tidak valid");
    }

    print("Apakah Anda ingin menggunakan kalkulator lagi? (y/n):");
    String? answer = stdin.readLineSync();
    if (answer?.toLowerCase() != 'y') {
      isRunning = false; 
      print("Terima kasih telah menggunakan kalkulator saya!");
    }
  }
}
