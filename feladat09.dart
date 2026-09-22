void main() {
  String maganhangzok = "aáeéiíoóöőuúüű";
  String sz = "LET US ALL BE THE LEADERS we wish we had.";
  for (int i = 0; i < sz.length; i++) {
    if (maganhangzok.contains(sz[i].toLowerCase()))
      break;
    else
      print(sz[i]);
  }
}
