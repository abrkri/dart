void main() {

    // 1.
    List<int> fizzbuzz = [];

    for (int i = 1; i <= 100; i++) {
        if (i % 3 == 0 || i % 5 == 0) fizzbuzz.add(i);
    }

    print(fizzbuzz);

    // 2.
    List<String> oddEven = [];
    fizzbuzz.forEach((x) {
        oddEven.add(x % 2 == 0 ? "even" : "odd");
    });
    print(oddEven);

    // 3.
    Set <int> oddSet = {};
    fizzbuzz.forEach((x) {
        if (x % 2 != 0) oddSet.add(x);
    });
    print(oddSet);

    // 4.
    Map <int, List<String>> fizzbuzzMap = {};
    for (int i = 1; i <= 100; i++) {
        if (i % 3 == 0 && i % 5 == 0) {
            fizzbuzzMap[i] = ["${fizzbuzz[fizzbuzz.indexOf(i)]}", "fizzbuzz", "${oddEven[fizzbuzz.indexOf(i)]}"];
        }
        else if (i % 3 == 0) {
            fizzbuzzMap[i] = ["${fizzbuzz[fizzbuzz.indexOf(i)]}", "fizz", "${oddEven[fizzbuzz.indexOf(i)]}"];
        }
        else if (i % 5 == 0) {
            fizzbuzzMap[i] = ["${fizzbuzz[fizzbuzz.indexOf(i)]}", "buzz", "${oddEven[fizzbuzz.indexOf(i)]}"];
        }
        else {
            fizzbuzzMap[i] = ["${fizzbuzz[fizzbuzz.indexOf(i)]}", "${oddEven[fizzbuzz.indexOf(i)]}"];
        }
    }

    fizzbuzzMap.forEach((key, value) {
        print("$key - $value");
    });
}   