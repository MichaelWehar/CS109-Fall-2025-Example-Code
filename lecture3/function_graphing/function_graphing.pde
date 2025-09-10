int x = 0;

void setup() {
  size(1000, 1000);
  background(255, 255, 255);
  fill(0, 0, 0);
  noStroke();
}

void draw() {
  fill(255, 0, 0);
  ellipse(x, 1000 - 2 * x, 3, 3);
  fill(0, 255, 0);
  ellipse(x, 1000 - 0.5 * x, 3, 3);
  fill(0, 0, 255);
  ellipse(x, 1000 - x * x / 5, 3, 3);
  x++;
}
