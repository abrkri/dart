import "dart:io";
import 'dart:math';

void main() {
  //
  // 1.

  int a = 0;
  int b = 0;
  int c = 0;
  do {
    print("a: ");
    a = int.parse(stdin.readLineSync()!);

    print("b: ");
    b = int.parse(stdin.readLineSync()!);

    print("c: ");
    c = int.parse(stdin.readLineSync()!);
  } while (a <= 0 || b <= 0 || c <= 0);

  // 2.

  if (a > b) {
    print("B oldal kisebb");
    print("A oldal nagyobb");
  } else if (b > a) {
    print("A oldal kisebb");
    print("B oldal nagyobb");
  } else if (a == b)
    print("A két oldal egyenlő");
  print(a == b ? "négyzet" : "téglalap");
  print("Kerület: ${2 * a + 2 * b}");
  print("Terület: ${a * b}");

  // 3.

  print(
    a + b > c && a + c > b && b + c > a
        ? "alkothat háromszöget"
        : "nem alkothat háromszöget",
  );

  // 4.

  int abc = int.parse(a.toString() + b.toString() + c.toString());
  int elsoharom = -1;
  if (abc.toString().length > 3)
    elsoharom = int.parse(
      abc.toString()[0] + abc.toString()[1] + abc.toString()[2],
    );
  else
    elsoharom = abc;
  print("Első három szám: ${elsoharom}");
  print(sqrt(elsoharom) % 1 == 0 ? "Négyzetszám" : "Nem négyzetszám");

  bool prim = true;
  for (int i = 2; i < elsoharom; i++) {
    if (elsoharom % i == 0) {
      prim = false;
      break;
    }
  }
  print(prim ? "Pímszám" : "Nem prímszám");
}
