void main() {
  String sz = "I have an Apple";
  String vagott = "";
  for (int i = 0; i < sz.length; i++) {
    if (sz[i] == sz[i].toUpperCase() && sz[i] != " ") continue;
    vagott += sz[i];
  }
  print(vagott);
}
