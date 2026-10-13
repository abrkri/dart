import 'dart:io';
import 'dart:math' as math;

// 1.
String getName() {
  print("Vezeteknev: ");
  String vnev = stdin.readLineSync()!;
  print("Keresztnev: ");
  String knev = stdin.readLineSync()!;
  return "$vnev $knev";
}

void fullName() {
  print("Teljes nev: ${getName()}");
}

// 2.
void teglatest() {
  print("A el: ");
  int a = int.parse(stdin.readLineSync()!);
  print("B el: ");
  int b = int.parse(stdin.readLineSync()!);
  print("C el: ");
  int c = int.parse(stdin.readLineSync()!);

  print("Térfogat: ${terfogat(a, b, c)}");
  print("Felszín: ${felszin(a, b, c)}");
  print("Lap1: ${lap1(a, b)}");
  print("Lap2: ${lap2(a, c)}");
}

int terfogat(int a, int b, int c) {
  return a * b * c;
}

int felszin(int a, int b, int c) {
  return 2 * (a * b + a * c + b * c);
}

int lap1(int a, int b) {
  return a * b;
}

int lap2(int a, int c) {
  return a * c;
}

// 3.
void kup() {
  print("Tizedes szam: ");
  double r = double.parse(stdin.readLineSync()!);
  print("Kup felszine: ${kupFelszin(r).toStringAsFixed(2)}");
  print("Kup terfogata: ${kupTerfogat(r).toStringAsFixed(2)}");
}

double kupFelszin(double r) {
  double alapkorterulet = 4 * math.pi * r * r;
  double palastterulet =
      (math.sqrt((math.pow(r, 2) + math.pow(r, 2))) * r * math.pi);
  return alapkorterulet + palastterulet;
}

double kupTerfogat(double r) {
  return (1 / 3) * (r * r) * math.pi * r;
}

void main() {
  fullName();
  teglatest();
  kup();
}
