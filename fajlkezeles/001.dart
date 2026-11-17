import 'dart:io';

void main () {
    File f1 = File('fajlkezeles/test.txt');
    String contentsF1 = f1.readAsStringSync();
    print(contentsF1);
    print(contentsF1.split('\n')[0]);
    print(contentsF1.split('\n')[contentsF1.split('\n').length - 1]);

    File f2 = File('fajlkezeles/test.csv');
    f2.readAsStringSync().split('\n').forEach((line) {
        print(line);
    });

    File f3 = File('fajlkezeles/school.txt');
    f3.writeAsStringSync("Szegedi SZC Vasvári Pál Gazdasági és Informatikai Technikum, 6722, Gutenberg utca 11, Szeged\n");
    f3.writeAsStringSync("13.b\n", mode: FileMode.append);

}