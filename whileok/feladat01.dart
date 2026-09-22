void main() {
  int szam = 0;
  int fib = 0;
  int next = 1;
  do {
    int sum = fib + next;
    print(fib);
    fib = next;
    next = sum;
    szam++;
  } while (szam < 100);
}
