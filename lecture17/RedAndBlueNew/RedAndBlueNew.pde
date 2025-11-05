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
  red.draw();
  blue.draw();
  // Bounce off each other
  red.bounceOff(blue);
  // Bounce off boundaries
  red.bounceOffBoundary();
  blue.bounceOffBoundary();
  // Move circles
  red.move();
  blue.move();
  // Speed up
  red.increaseSpeed();
  blue.increaseSpeed();
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
  void draw() {
    fill(r, g, b);
    ellipse(x, y, 2 * radius, 2 * radius);
  }
  void move() {
    x += dx;
    y += dy;
  }
  void bounceOffBoundary() {
    if(x - radius < 0 || x + radius > 500) {
      dx *= -1;
    }
    if(y - radius < 0 || y + radius > 500) {
      dy *= -1;
    }
  }
  void increaseSpeed() {
    dx *= 1.01;
    dy *= 1.01;
  }
  void bounceOff(Ball other) {
    float diffOfTwoX = x - other.x;
    float diffOfTwoY = y - other.y;
    float dist = dist(x, y, other.x, other.y);
    if(dist < radius + other.radius && dist != 0) {
      dx = diffOfTwoX / dist;
      dy = diffOfTwoY / dist;
      other.dx = -diffOfTwoX / dist;
      other.dy = -diffOfTwoY / dist;
    }
  }
}
