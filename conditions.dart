import 'dart:io';

void main() {
  // 1.
  print("szam: ");
  int szam = int.parse(stdin.readLineSync()!);

  // 2.
  szam % 2 == 0 ? print("paros") : print("paratlan");

  //3.
  print("-----IF-----");
  if (szam == 1)
    print("elegtelen");
  else if (szam == 2)
    print("elegseges");
  else if (szam == 3)
    print("kozepes");
  else if (szam == 4)
    print("jo");
  else if (szam == 5)
    print("jeles");
  else
    print("tartomanyon kivul van");

  //4.
  print("-----SWITCH-----");
  switch (szam) {
    case 1:
      print("elegtelen");
      break;
    case 2:
      print("elegseges");
      break;
    case 3:
      print("kozepes");
      break;
    case 4:
      print("jo");
      break;
    case 5:
      print("jeles");
      break;
    default:
      print("tartomanyon kivul van");
  }

  //5.
  print("-----ASSERT-----");
  assert(szam > 0 && szam < 6, "tartomanyon kivul van");
  // assert(false, "tartomanyon kivul van");
}
