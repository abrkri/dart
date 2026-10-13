import 'dart:io';
import 'dart:math' as math;

void szamok() {
  print("Szam 1: ");
  int sz1 = int.parse(stdin.readLineSync()!);
  print("Szam 2: ");
  int sz2 = int.parse(stdin.readLineSync()!);

  print("Szam 1 negyzete: ${sz1Negyzete(sz1)}");
  print("Szam 2 kobe: ${sz2Kob(sz2).toStringAsFixed(2)}");
  szamokGyok(sz1, sz2);
  kisebbNagyobb(sz1, sz2);
  print("Nulla es elso szam kozotti random szam: ${nullaElso(sz1)}");
  print("Elso es masodik szam kozotti random szam: ${elsoMasodik(sz1, sz2)}");
  print("A haromszog atloja: ${atlo(sz1, sz2).toStringAsFixed(2)}");
}

int sz1Negyzete(int sz1) {
  return sz1 * sz1;
}

double sz2Kob(int sz2) {
  return math.pow(sz2, 3).toDouble();
}

void szamokGyok(int sz1, int sz2) {
  print("Szam 1 gyoke: ${math.sqrt(sz1Negyzete(sz1)).toStringAsFixed(2)}");
  print("Szam 2 gyoke: ${math.pow(sz2Kob(sz2), 1 / 3).toStringAsFixed(2)}");
}

void kisebbNagyobb(int sz1, int sz2) {
  if (sz1 < sz2) {
    print("Kisebb szam: $sz1");
    print("Nagyobb szam: $sz2");
  } else if (sz1 > sz2) {
    print("Kisebb szam: $sz2");
    print("Nagyobb szam: $sz1");
  } else {
    print("A ket szam egyenlo.");
  }
}

int nullaElso(int sz1) {
  return math.Random().nextInt(sz1);
}

int elsoMasodik(int sz1, int sz2) {
  return math.Random().nextInt(sz2 - sz1 + 1) + sz1;
}

double atlo(int sz1, int sz2) {
  return math.sqrt(math.pow(sz1, 2) + math.pow(sz2, 2));
}

void main() {
  szamok();
}
