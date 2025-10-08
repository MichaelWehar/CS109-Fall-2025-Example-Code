void subtractThree(int n) {
  if(n > 2) {
    n -= 3;
    println("Subracted Three: " + n);
    addOne(n);
  }
}
void addOne(int n) {
  n++;
  println("Added One: " + n);
  subtractThree(n);
}
void setup() {
  int n = 10;
  addOne(n);
}
