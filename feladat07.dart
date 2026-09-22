void main() {
  String sz = "apple";
  String maganhangzok = "aáeéiíoóöőuúüű";
  int db = 0;
  for (int i = 0; i < sz.length; i++) {
    if (maganhangzok.contains(sz[i])) db++;
  }
  print("The number of vowels in the word 'apple' is " + db.toString() + ".");
}
