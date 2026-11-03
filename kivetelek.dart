import 'dart:io';

class NegativeExpressionException implements Exception {
  String errorMessage() => 'Érvénytelen érték';
}

void checkPositive(int number) {
  if (number < 0) {
    throw NegativeExpressionException().errorMessage();
  }
}

void checkDivisionByZero(int sz) {
  if (sz == 0) {
    throw UnsupportedError('Nullával való osztási hiba.');
  }
}

void main() {
  int? sz = int.parse(stdin.readLineSync()!);
    int res = 0;
  try {
    checkPositive(sz);
    res = sz % 3;
    checkDivisionByZero(sz);
  } catch (e) {
    print(e);
  } finally {
        print("maradék: $res");

  }
}