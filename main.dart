import 'dart:io';

void main() {
    while(true){
    print("işlem tipini seçiniz:\n1- Toplama\n2- Çıkarma\n3- Çarpma\n4- Bölme\n0- Çıkış");

    int operation = int.parse(stdin.readLineSync()!);
    if (operation == 0) {
      print("Program sonlandırıldı.");
     break;
    }
    print("Sırasıyla parametreleri giriniz.");
    int num1 = int.parse(stdin.readLineSync()!);
    int? num2 = int.tryParse(stdin.readLineSync()!) ?? 0 ;

  try{
    switch (operation) {
      case 1:
        print(add(num1, num2));
        break;
      case 2:
        print(subtract(num1, num2));
        break;
      case 3:
        print(multiply(num1, num2));
        break;
      case 4:
       print(divide(num1, num2));
        break;
      default:
        print("Geçersiz işlem");
     }
   } 
     catch (e) {
      print("Hata: $e");
   }
  }
}


int add(int num1, [ int num2 = 0]) {
  print("İşlem Sonucu:");
  return num1 + num2;
}

int subtract(int num1, [ int num2 = 0]) {
  print("İşlem Sonucu:");
  return num1 - num2;
}

int multiply(int num1, [ int num2 = 0]) {
  print("İşlem Sonucu:");
  return num1 * num2;
}

double divide(int num1, [ int num2 = 0]) {
  if (num2 == 0) {
    throw "Bir sayı sıfıra bölünemez!";
  }
  print("İşlem Sonucu:");
  return num1 / num2;
}
