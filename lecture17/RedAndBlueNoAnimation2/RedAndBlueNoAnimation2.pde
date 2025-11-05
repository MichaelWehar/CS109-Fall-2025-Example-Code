// Declare both global variables
Ball red;
Ball blue;

void setup() {
  size(500, 500);
  // Set first ball's values
  red = new Ball(150, 150, 100, 4, 2);
  red.setColor(255, 0, 0);
  // Set second ball's values
  blue = new Ball(350, 350, 75, 1, 5);
  blue.setColor(0, 0, 255);
}

void draw() {
  // Clear canvas
  background(0);
  // Draw circles
  red.drawBall();
  blue.drawBall();
}

class Ball {
  // Member Variables
  float x;
  float y;
  int radius;
  float dx;
  float dy;
  int r;
  int g;
  int b;
  // Constructor
  Ball(int inputX, int inputY, int inputRadius, int inputDX, int inputDY) {
    x = inputX;
    y = inputY;
    radius = inputRadius;
    dx = inputDX;
    dy = inputDY;
    // Default color is black
    r = 0;
    g = 0;
    b = 0;
  }
  // Methods
  void setColor(int inputR, int inputG, int inputB) {
    r = inputR;
    g = inputG;
    b = inputB;
  }
  void drawBall() {
    fill(r, g, b);
    ellipse(x, y, 2 * radius, 2 * radius);
  }
}
