String addPrefixPRE(String x) {
  return "pre" + x;
}

String addSuffixD(String x) {
  return x + "d";
}

void setup() {
  // Normal function call
  String s1 = addPrefixPRE("determine");
  // Nested function calls
  String s2 = addPrefixPRE(addSuffixD("define"));
  String s3 = addSuffixD(addPrefixPRE("define"));
  // Print results
  println(s1);
  println(s2);
  println(s3);
}
