void main() {
  String falvedo =
      "Hol hit, ott szeretet,Hol szeretet, ott béke,Hol béke, ott áldás,Hol áldás, ott Isten,Hol Isten, ott szükség nincsen.";
  String alsoKulcs = falvedo.toLowerCase();
  String felsoKulcs = falvedo.toUpperCase();
  String bortvalva = falvedo.trim();
  String szokoz = falvedo.replaceAll(" ", "-");
  String luccsano = "... " + falvedo.substring(5, falvedo.length);
  String elsoHarom = falvedo.substring(0, 3);
  String elsoTiz = falvedo.substring(10, falvedo.length) + " ...";

  print("eredeti: $falvedo\n");
  print("kisbetű: $alsoKulcs\n");
  print("nagybetű: $felsoKulcs\n");
  print("trimmelt: $bortvalva\n");
  print("szóköz: $szokoz\n");
  print("elején pontok: $luccsano\n");
  print("UTF-16: ${elsoHarom.codeUnits}\n");
  print("végén pontok: $elsoTiz");
}
