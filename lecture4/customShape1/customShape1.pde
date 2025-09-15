void drawMyPolygon(int x, int y, int l) {
  beginShape();
  vertex(x - l / 2, x - l / 2); // upper left
  vertex(x + l / 2, y - l / 2); // upper right
  vertex(x, y); // center
  vertex(x + l / 2, y + l / 2); // lower right
  vertex(x - l / 2, y + l / 2); // lower left
  endShape(CLOSE);
}

void setup() {
  size(500, 500);
  drawMyPolygon(250, 250, 500);
  drawMyPolygon(250, 250, 250);
  drawMyPolygon(250, 250, 100);
}
