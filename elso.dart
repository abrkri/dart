import 'dart:io';

void main() {
  // print("Hello, World!");

  //   print("Enter name:");
  //   String name = stdin.readLineSync()!;
  //   print("The entered name is ${name.length} characters long.");

  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);
  print("The entered number is ${number}.");
}
