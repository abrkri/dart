import 'dart:io';

void main() {
  print("szoveg: ");
  String? sz = stdin.readLineSync()!;
  String rv = sz.split('').reversed.join();
  if (sz.replaceAll(' ', '').toLowerCase() ==
      rv.replaceAll(' ', '').toLowerCase())
    print("palidrom");
  else
    print("nem palidrom");
}
