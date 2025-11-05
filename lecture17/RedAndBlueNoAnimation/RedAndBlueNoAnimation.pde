class Ball {
  float x;
  float y;
  int radius;
  float dx;
  float dy;
}

// First ball
Ball red;
// Second ball
Ball blue;

void setup() {
  size(500, 500);
  // Set first ball's values
  red = new Ball();
  red.x = 150;
  red.y = 150;
  red.radius = 100;
  red.dx = 4;
  red.dy = 2;
  // Set second ball's values
  blue = new Ball();
  blue.x = 350;
  blue.y = 350;
  blue.radius = 75;
  blue.dx = 1;
  blue.dy = 5;
}

void draw() {
  // Clear canvas
  background(0);
  // Draw circles
  fill(255, 0, 0);
  ellipse(red.x, red.y, 2 * red.radius, 2 * red.radius);
  fill(0, 0, 255);
  ellipse(blue.x, blue.y, 2 * blue.radius, 2 * blue.radius);
}
