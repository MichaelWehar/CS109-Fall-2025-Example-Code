float x1 = 249;
float y1 = 249;
int r1 = 100;
float x2 = 255;
float y2 = 251;
int r2 = 75;

void setup() {
  size(500, 500); 
}

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
    x1 += dx / dist;
    y1 += dy / dist;
    x2 -= dx / dist;
    y2 -= dy / dist;
  }
}
