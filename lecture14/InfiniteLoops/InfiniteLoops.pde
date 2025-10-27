void setup() {
  // Simplest infinite loop
  // while(true) {
    // do nothing
  // }
  // Condition is never false
  int x = 10;
  while(x > 0) {
    x = (x + 1) / 2;
  }
  println("We never reach this!");
}
