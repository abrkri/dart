void main() {
  int currentHours = 14;
  int currentMinutes = 34;
  int currentSeconds = 42;

  int remainingSec =
      (24 * 3600) -
      ((currentHours * 3600) + (currentMinutes * 60) + (currentSeconds));
  print(remainingSec);
}
