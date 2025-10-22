void setup() {
  bug1();
  // bug2();
}
void bug1() {
  String x = null;
  printLength(x);
  // fixedPrintLength(x);
}
// Bad
void printLength(String s) {
  println(s.length());
}
// Good
void fixedPrintLength(String s) {
  if(s != null) {
    println(s.length());
  } else {
    println("The input was null.");
  }
}
void bug2() {
  String x = null;
  String y = "apple";
  println(checkEquals(x, y));
  // println(fixedCheckEquals(x, y));
}
// Bad
boolean checkEquals(String x, String y) {
  return x.equals(y);
}
// Good
boolean fixedCheckEquals(String x, String y) {
  return (x == null && y == null) || (x != null && x.equals(y));
}
