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
  Vector a = new Vector(1, 4);
  Vector b = new Vector(1, 4);
  if(a == b) {
    println("They are the same!");
  } else {
    println("They are different!");
  }
}
