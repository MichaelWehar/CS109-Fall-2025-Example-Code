int step = 0;
int centerX = 250;
int centerY = 250;

// Draws two rectangles that are equally
// scaled in size and their distance
// away from the center point 
void drawRectPair(float scale) {
  rectMode(CENTER);
  rect(centerX - 50 * scale, centerY - 100 * scale, 50 * scale, 50 * scale);
  rect(centerX + 50 * scale, centerY - 100 * scale, 50 * scale, 50 * scale);
}

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  // Draw center point
  fill(20, 20, 255);
  ellipse(centerX, centerY, 10, 10);
  // Draw rectangle pair
  fill(255);
  float scale = (500 - step) / 500.0;
  drawRectPair(scale);
  // increase step
  step++;
}
