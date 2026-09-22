import 'dart:io';

void main() {
  print("Ev: ");
  int? sz = int.parse(stdin.readLineSync()!);
  if (sz % 4 == 0 && sz % 400 == 0 || sz % 100 != 0)
    print("Szokoev");
  else
    print("Nem szokoev");
}
