float x;
float y;
float dx;
float dy;
int radius;

void setup() {
  size(600, 600);
  radius = 50;
  // random start location
  x = random(radius, 600 - radius);
  y = random(radius, 600 - radius);
  // random vector
  dx = random(0, 3);
  dy = random(0, 3);
}

void draw() {
  // Clear background
  background(0);
  // Check for collision
  // if(x - radius < 0) {
  //   dx = -1 * dx;
  // } else if(x + radius > 600) {
  //   dx = -1 * dx;
  // }
  // if(y - radius < 0) {
  //   dy = -1 * dy;
  // } else if(y + radius > 600) {
  //   dy = -1 * dy;
  // }
  // Simplified!
  if(x - radius < 0 || x + radius > 600) {
    dx *= -1;
  }
  if(y - radius < 0 || y + radius > 600) {
    dy *= -1;
  }
  // Draw ball
  int diameter = 2 * radius;
  ellipse(x, y, diameter, diameter);
  // Update x and y
  x += dx;
  y += dy;
}
