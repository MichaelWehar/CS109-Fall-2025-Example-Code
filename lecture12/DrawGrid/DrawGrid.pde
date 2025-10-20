int offset = 20;

void placeSquare(int i, int j) {
   rect((j + 1) * offset, (i + 1) * offset, offset / 2, offset / 2);
}
void drawGridHelper(int i, int j, int m, int n) {
  if(i < m && j < n) {
    placeSquare(i, j);
    drawGridHelper(i, j + 1, m, n);
  } else if(i < m && j == n) {
    drawGridHelper(i + 1, 0, m, n);
  }
}
void drawGrid(int m, int n) {
  drawGridHelper(0, 0, m, n);
}
void setup() {
  size(600, 600);
  rectMode(CENTER);
  fill(0, 0, 255);
  drawGrid(20, 20);
  fill(0, 255, 0);
  drawGrid(10, 15);
  fill(255, 0, 0);
  drawGrid(5, 7);
}
