void setup() {
  String x = "hello world";
  String y = "HELlo worLD";
  checkEquals(x, x);
  checkEquals(x, y);
  y = y.toLowerCase();
  checkEquals(x, y);
}

void checkEquals(String x, String y) {
  if(x == y) {
    println("Refer to same memory location.");
  } else if(x.equals(y)) {
    println("Refer to equivalent data.");
  } else {
    println("Neither.");
  }
}
