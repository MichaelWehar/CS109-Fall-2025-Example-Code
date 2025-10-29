void setup() {
  int n = 5;
  println(whileFactorial(n));
  println(forFactorial(n));
}
int whileFactorial(int n) {
  int result = 1;
  int i = 1;
  while(i <= n) {
    result *= i;
    i++;
  }
  return result;
}
int forFactorial(int n) {
  int result = 1;
  for(int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
