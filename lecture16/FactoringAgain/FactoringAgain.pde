void setup() {
  // Check if n can be factored
  // Note: much more efficient
  // approaches do exist
  int n = 8;
  for(int i = 2; i <= n / 2; i++) {
    for(int j = i; j <= n / 2; j++) {
      println("CASE: " + i + ", " + j);
      if(n == i  * j) {
        // Exit if factors are found
        println(n + " = " + i + " x " + j);
        return;
      }
    }
  }
  // Otherwise it's prime or less than 2
  if(n > 1) {
    println(n + " is a prime number");
  } else {
    println(n + " is less than 2");
  }
}
