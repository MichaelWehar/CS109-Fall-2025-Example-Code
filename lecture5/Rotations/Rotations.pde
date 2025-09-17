void drawMyPolygon(int x, int y, int l, float theta) {
  translate(x, y);
  rotate(theta);
  beginShape();
  vertex(-l / 2, -l / 2); // upper left
  vertex(l / 2, -l / 2); // upper right
  vertex(0, 0); // center
  vertex(l / 2, l / 2); // lower right
  vertex(-l / 2, l / 2); // lower left
  endShape(CLOSE);
  rotate(-theta);
  translate(-x, -y);
}

void setup() {
  size(500, 500);
  drawMyPolygon(250, 250, 500, 0);
  drawMyPolygon(250, 250, 250, PI / 2);
  drawMyPolygon(250, 250, 100, 5 * PI / 4);
}
