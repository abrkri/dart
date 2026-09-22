void main() {
  String sz = "O teach me how I should forget to think (1.1.224.)";
  String vagott = "";
  String szamok = "0123456789";
  for (int i = 0; i < sz.length; i++) {
    if (!szamok.contains(sz[i])) vagott += sz[i];
  }
  print(vagott);
}
