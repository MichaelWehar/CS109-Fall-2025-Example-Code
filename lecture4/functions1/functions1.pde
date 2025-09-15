int addition(int x, int y) {
  return x + y;
}

double distance(int x1, int y1, int x2, int y2) {
  return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

void printFavoriteFlavor(String flavor, String dessertType) {
  println("My favorite flavor of " + dessertType + " is " + flavor + ".");
}

void setup() {
  int result1 = addition(10, 3);
  double result2 = distance(1, 1, 4, 5);
  println("output 1: " + result1);
  println("output 2: " + result2);
  printFavoriteFlavor("cookies n cream", "ice cream");
}
