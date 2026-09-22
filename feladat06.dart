import 'dart:io';

void main() {
  print("---PLAYER 1---\n1: rock\n2: paper\n3: scissors");
  int? sz1 = int.parse(stdin.readLineSync()!);
  print("---PLAYER 2---\n1: rock\n2: paper\n3: scissors");
  int? sz2 = int.parse(stdin.readLineSync()!);
  if (sz1 == sz2)
    print("The game is a tie.");
  else if (sz1 == 1 && sz2 == 2)
    print("The second player wins.");
  else if (sz1 == 1 && sz2 == 3)
    print("The first player wins.");
  else if (sz1 == 2 && sz2 == 1)
    print("The first player wins.");
  else if (sz1 == 2 && sz2 == 3)
    print("The second player wins.");
  else if (sz1 == 3 && sz2 == 1)
    print("The second player wins.");
  else if (sz1 == 3 && sz2 == 2)
    print("The first player wins.");
}
