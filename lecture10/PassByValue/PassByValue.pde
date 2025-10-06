void funcB(int z) {
  println("funcB: z = " + z);
  z = 1;
  println("funcB: z = " + z);
}
void funcA(int x, int y) {
  println("funcA: x = " + x);
  println("funcA: y = " + y);
  funcB(x);
  println("funcA: x = " + x);
  println("funcA: y = " + y);
  x++;
  y = 3;
  println("funcA: x = " + x);
  println("funcA: y = " + y);
}
void setup() {
  int n = 7;
  int m = 24;
  println("main: n = " + n);
  println("main: m = " + m);
  funcA(n, m);
  println("main: n = " + n);
  println("main: m = " + m);
}
