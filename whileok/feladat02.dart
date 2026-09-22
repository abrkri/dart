import 'dart:io';

void main() {
  print("hanyszor: ");
  int? sz = int.parse(stdin.readLineSync()!);
  int db = 1;
  do {
    print("(${db}) Happy birthday!");
    db++;
  } while (db <= sz);
}
