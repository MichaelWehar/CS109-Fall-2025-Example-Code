int factorial(int n) {
  println("Started call on n = " + n);
  if(n <= 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void setup() {
  // println(factorial(0));
  // println(factorial(1));
  // println(factorial(4));
  // println(factorial(7));
  println("Result = " + factorial(4));
}
