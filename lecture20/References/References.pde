class Vector {
  int x;
  int y;
  Vector(int x, int y) {
    this.x = x;
    this.y = y;
  }
  String toString() {
    return "x = " + this.x + ", y = " + this.y; 
  }
}

void setup() {
  // Create references: a, b
  Vector a = new Vector(1, 4);
  Vector b = new Vector(2, 8);
  println(a.toString());
  println(b.toString());
  // Update their values
  a = b; // a now refers to the same memory that b refers to
  b.x = 200; // looks up the memory at b's address and changes x's value to 200
  println(a.toString());
  println(b.toString());
  // Let's try this with primitive data variables
  int c = 7;
  int d = 12;
  println(c + ", " + d);
  // Update their values
  c = d;
  d = 200;
  println(c + ", " + d);
}
