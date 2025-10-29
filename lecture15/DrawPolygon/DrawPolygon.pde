void setup() {
  size(500, 500);
  strokeWeight(5);
}

void draw() {
  drawPolygon(250, 250, 200, PI / 10, 10);
  drawPolygon(250, 250, 150, PI / 8, 8);
  drawPolygon(250, 250, 100, PI / 6, 6);
}

void drawPolygon(int x, int y, int r, float angle, int numOfPoints) {
  float theta = 0;
  beginShape();
  /* Alternative approach:
  while(theta < 2 * PI) {
   vertex(x + r * cos(theta + angle), y + r * sin(theta + angle));
   theta += 2 * PI / numOfPoints;
  }*/
  for(int i = 0; i < numOfPoints; i++) {
    vertex(x + r * cos(theta + angle), y + r * sin(theta + angle));
    theta += 2 * PI / numOfPoints;
  }
  endShape(CLOSE);
}
