void main() {
  //1
  int intValue = 67;
  double doubleValue = 6.7;
  String strValue = "HatHet";
  bool boolValue = false;

  //2
  int intResult = intValue + doubleValue.toInt();
  double doubleResult = doubleValue - intValue;

  //3
  print(
    "összead: ${intResult}\nkivon: ${doubleResult}\nstring: ${strValue}\nbool: ${boolValue}",
  );

  //4
  bool boolResult = !boolValue;
  print("boolValue negalt: ${boolResult}");

  //5
  print(
    "szorzas: ${intValue * doubleValue}\nosztas: ${intValue / doubleValue}\nmaradekos: ${intValue % doubleValue}",
  );
}
