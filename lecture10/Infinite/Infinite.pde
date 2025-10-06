void printX(int n) {
  if(n > 0) {
    print("x");
    printX(n - 1);
  } else {
    println();
  }
}
void recursivePrint(int max, int n, int inc) {
  printX(n);
  n += inc;
  if(n <= 0 || n >= max) {
    inc *= -1;
  }
  recursivePrint(max, n, inc);
}
void badRecursion(int n) {
  badRecursion(n + 1);
}
void setup() {
  // badRecursion(0);
  recursivePrint(30, 0, 1);
}
