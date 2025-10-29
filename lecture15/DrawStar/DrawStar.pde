void setup() {
  size(500, 500);
  strokeWeight(5);
}

void draw() {
  drawStar(250, 250, 200, 100, 0, 10);
  drawStar(250, 250, 100, 50, 0, 5);
}

void drawStar(int x, int y, int r1, int r2, float angle, int numOfOuterPoints) {
  float theta = 0;
  beginShape();
  for(int i = 0; i < numOfOuterPoints; i++) {
    vertex(x + r1 * cos(theta + angle), y + r1 * sin(theta + angle));
    theta += PI / numOfOuterPoints;
    vertex(x + r2 * cos(theta + angle), y + r2 * sin(theta + angle));
    theta += PI / numOfOuterPoints;
  }
  endShape(CLOSE);
}
