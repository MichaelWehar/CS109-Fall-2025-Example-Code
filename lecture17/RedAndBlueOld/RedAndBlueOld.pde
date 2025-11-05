// First ball
float x1 = 350;
float y1 = 350;
float dx1 = 4;
float dy1 = 2;
int r1 = 100;
// Second ball
float x2 = 80;
float y2 = 80;
float dx2 = 1;
float dy2 = 5;
int r2 = 75;

void setup() {
  size(500, 500); 
}

// Note there is an issue if the balls
// both collide with each other and the
// boundary at the same time step.
void draw() {
  // Clear canvas
  background(0);
  // Calculations
  float dx = x1 - x2;
  float dy = y1 - y2;
  float dist = dist(x1, y1, x2, y2);
  // Draw circles
  fill(255, 0, 0);
  ellipse(x1, y1, 2 * r1, 2 * r1);
  fill(0, 0, 255);
  ellipse(x2, y2, 2 * r2, 2 * r2);
  // Push them away from each other
  if(dist < r1 + r2 && dist != 0) {
    dx1 = dx / dist;
    dy1 = dy / dist;
    dx2 = -dx / dist;
    dy2 = -dy / dist;
  }
  // Push away from boundary
  if(x1 - r1 < 0 || x1 + r1 > 500) {
    dx1 *= -1;
  }
  if(y1 - r1 < 0 || y1 + r1 > 500) {
    dy1 *= -1;
  }
  if(x2 - r2 < 0 || x2 + r2 > 500) {
    dx2 *= -1;
  }
  if(y2 - r2 < 0 || y2 + r2 > 500) {
    dy2 *= -1;
  }
  // Update positions
  x1 += dx1;
  y1 += dy1;
  x2 += dx2;
  y2 += dy2;
  // Speed up
  dx1 *= 1.01;
  dy1 *= 1.01;
  dx2 *= 1.01;
  dy2 *= 1.01;
}
