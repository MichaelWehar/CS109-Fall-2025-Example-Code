class Vector {
  // Member variables
  float x;
  float y;
  // Constructor
  Vector(float inputX, float inputY) {
    x = inputX;
    y = inputY;
  }
  // Methods
  float getMagnitude() {
    return sqrt(x * x + y * y);
  }
  void scale(float scalingFactor) {
    x *= scalingFactor;
    y *= scalingFactor;
  }
}

void setup() {
  // Created two object variables
  Vector a = new Vector(4, 3);
  Vector b = new Vector(1, 2);
  // We called methods to get the magnitude and scale
  println(a.getMagnitude());
  a.scale(2);
  println(a.getMagnitude());
  println(b.getMagnitude());
  // Directly modify a's x, y
  a.x = 5;
  a.y = 7;
  println(a.getMagnitude());
}
