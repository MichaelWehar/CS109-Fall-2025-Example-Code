// The helper method is needed just so that
// n = 0 returns "0" instead of "".
String inBinaryHelper(int n) {
  if(n > 0) {
    // String concatenation
    return inBinaryHelper(n / 2) + (n % 2);
  } else {
    return "";
  }
}
String inBinary(int n) {
  if(n > 0) {
    return inBinaryHelper(n);
  } else if(n == 0) {
    return "0";
  } else {
    return "Negative Numbers Are Not Supported!";
  }
}
void setup() {
  int x = 13;
  int y = 22;
  int z = 32;
  println(x + " = " + inBinary(x));
  println(y + " = " + inBinary(y));
  println(z + " = " + inBinary(z));
}
