void main() {
  String number = "268";
  double avg = 0;
  for (int i = 0; i < number.length; i++) {
    avg += int.parse(number[i]);
  }
  print("The average of digits is " + (avg / number.length).toStringAsFixed(2));
}
