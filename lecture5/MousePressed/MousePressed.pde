float step = 0.0;
float x = 0;
float y = 0;
float newX = 250;
float newY = 250;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(0);
  drawRect(step);
  step += 0.01;
  float d = dist(x, y, newX, newY);
  // If d equals 0, this could cause an error.
  x += (newX - x) / d;
  y += (newY - y) / d; 
}

void drawRect(float theta) {
  translate(x, y);
  rotate(theta);
  rect(0, 0, 50, 50);
  rotate(-theta);
  translate(-x, -y);
}

void mousePressed() {
  newX = mouseX;
  newY = mouseY;
}
