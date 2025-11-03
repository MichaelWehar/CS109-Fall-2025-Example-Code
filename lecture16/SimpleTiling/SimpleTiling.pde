int blockSize = 50;

void setup() {
   size(500, 500);
   strokeWeight(10);
}

void draw() {
  int rows = width / blockSize;
  int cols = height / blockSize;
  fill(255, 0, 0);
  for(int i = 0; i < rows / 2 + 1; i++) {
    for(int j = 0; j < cols / 2; j++) {
      rect(2 * j * blockSize, (2 * i - 1) * blockSize, blockSize, 2 * blockSize);
    }
  }
  fill(0, 0, 255);
  for(int i = 0; i < rows / 2 + 1; i++) {
    for(int j = 0; j < cols / 2; j++) {
      rect((2 * j + 1) * blockSize, 2 * i * blockSize, blockSize, 2 * blockSize);
    }
  }
}
