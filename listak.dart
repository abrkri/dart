void fixList(lista, szam) {
  for (int i = 0; i < lista.length; i++) if (i % 2 == 1) lista[i] = szam;
  print(lista);
}

void fibonacci(fibolist) {
  int fib = 0;
  int next = 1;
  do {
    int sum = fib + next;
    fibolist.add(fib);
    fib = next;
    next = sum;
  } while (fib < 30);

  print(fibolist);
}

void main() {
  var list01 = List<int>.filled(10, 0);
  fixList(list01, 1);

  var list02 = List<int>.filled(10, 1);
  fixList(list02, 0);

  var fibolist = [];
  fibonacci(fibolist);

  print("A lista hossza: ${fibolist.length}");
  print("A lista első eleme: ${fibolist.first}");
  print("A lista utolsó eleme: ${fibolist.last}");
  print("A lista 3. eleme: ${fibolist[2]}");
  print("A lista 8. elemének indexe: ${fibolist.indexOf(fibolist[7])}");
  print("A lista fordított sorrendben: ${fibolist.reversed.toList()}");
  print("A lista üres-e: ${fibolist.isEmpty ? "Igen" : "Nem"}");
  fibolist.clear();
  print("A lista üres-e a törlés után: ${fibolist.isEmpty ? "Igen" : "Nem"}");
  fibolist.add(34);
  fibolist.addAll([1, 2, 3, 4, 5, 7]);
  print(fibolist);
  fibolist.insertAll(fibolist.indexOf(34) + 1, [0, 1]);
  print(fibolist);
  fibolist.replaceRange(
    fibolist.indexOf(fibolist.last),
    fibolist.indexOf(fibolist.last) + 1,
    [8, 13, 21],
  );
  print(fibolist);
  fibolist.removeAt(0);
  print(fibolist);

  var fiboSquare = fibolist.map((e) => e * e).toList();
  print(fiboSquare);

  var allFibo = [
    ...fibolist.where((e) => e % 2 == 1),
    ...fiboSquare.where((e) => e % 2 == 1),
  ];
  allFibo.sort();
  print(allFibo);
}
