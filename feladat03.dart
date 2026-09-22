void main() {
  String sz = "To be, or not to be, that is the question";
  print(
    sz.contains("bee")
        ? "Tartalmazza a bee szövegrészletet."
        : "Nem tartalmazza a bee szövegrészletet.",
  );
  print(
    sz.contains("to be")
        ? "Tartalmazza a to be szövegrészletet."
        : "Nem tartalmazza a to be szövegrészletet.",
  );
}
