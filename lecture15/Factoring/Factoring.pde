void setup() {
  int n = 10;
  // Check if n can be factored
  for(int i = 2; i < n; i++) {
    for(int j = 2; j < n; j++) {
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
