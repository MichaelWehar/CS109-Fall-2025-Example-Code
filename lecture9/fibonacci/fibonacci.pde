int fib(int n) {
  println("Called fib with n = " + n);
  if(n <= 0) {
    return 0;
  } else if(n == 1) {
    return 1;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}

void setup() {
  // println(fib(0));
  // println(fib(1));
  // println(fib(4));
  // println(fib(9));
  println("Result = " + fib(4));
}
