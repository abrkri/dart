import 'dart:io';

void main() {
  //1.
  print("----- 1. -----");
  List<int> cucc = [];
  print("szam1: ");
  cucc.add(int.parse(stdin.readLineSync()!));
  print("szam2: ");
  cucc.add(int.parse(stdin.readLineSync()!));
  cucc.sort();
  for (int i in cucc) {
    if (i % 2 == 0)
      print("${i} - paros");
    else
      print("${i} - paratlan");
  }

  //2.
  print("----- 2. -----");
  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland",
  ];
  uefa2024euro.forEach((e) => print("${uefa2024euro.indexOf(e)} - ${e}"));

  //3.
  print("----- 3. -----");
  for (int i = 0; i < uefa2024euro.length; i++) {
    for (int j = i + 1; j < uefa2024euro.length; j++) {
      print("${uefa2024euro[i]} - ${uefa2024euro[j]}");
    }
  }

  //4.
  print("----- 4. -----");
  print("szam: ");
  int szam = int.parse(stdin.readLineSync()!);
  int atlag = 0;
  for (int i = 0; i < szam.toString().length; i++) {
    atlag += int.parse(szam.toString()[i]);
  }
  print((atlag / szam.toString().length).toStringAsFixed(2));

  //5.
  print("----- 5. -----");
  print("szam: ");
  List<String> szjegy = (stdin.readLineSync()!).toString().split('');
  szjegy.forEach((e) => print(int.parse(e) * int.parse(e)));

  //6.
  print("----- 6. -----");
  print("szoveg:");
  String vagott = "";
  List<String> szov = stdin.readLineSync()!.split('');
  List<String> maganh = [
    "a",
    "á",
    "e",
    "é",
    "i",
    "í",
    "o",
    "ó",
    "ö",
    "ő",
    "u",
    "ú",
    "ü",
    "ű",
  ];
  for (var e in szov) {
    if (!maganh.contains(e)) vagott += e;
  }
  print(vagott);

  //7.
  print("----- 7. -----");
  print("szoveg:");
  String szoveg = (stdin.readLineSync()!);

  for (int i = 0; i < szoveg.length; i++) {
    print("${szoveg[i]} - ${szoveg.codeUnitAt(i)}");
  }

  for (int i = 1; i < 51; i++) {
    if (i % 3 == 0 && i % 5 == 0)
      print("FizzBuzz");
    else if (i % 3 == 0)
      print("Fizz");
    else if (i % 5 == 0)
      print("Buzz");
    else
      print(i);
  }
}
