class Board {
  int rows;
  int cols;
  int treasureX;
  int treasureY;
  boolean[][] grid;
  Board(int numOfRows, int numOfCols) {
    // Set rows and cols
    rows = numOfRows;
    cols = numOfCols;
    // Initialize grid
    grid = new boolean[rows][cols];
    // Set treasure coordinates
    treasureX = int(random(cols));
    treasureY = int(random(rows));
  }
  void guess(int x, int y) {
    int i = y * rows / height;
    int j = x * cols / width;
    grid[i][j] = true;
  }
  void draw() {
    int blockSize = width / cols;
    for(int i = 0; i < rows; i++) {
      for(int j = 0; j < cols; j++) {
        // Set color based on whether you've guessed the cell already
        if(grid[i][j]) {
          fill(255, 0, 0);
        } else {
          fill(255, 255, 255);
        }
        // Draw the cell
        rect(j * blockSize, i * blockSize, blockSize, blockSize);
        // Draw the number or display the $$$ sign
        if(grid[i][j]) {
          fill(0, 0, 0);
          int dist = abs(treasureX - j) + abs(treasureY - i);
          if(dist == 0) {
            text("$$$", j * blockSize + blockSize / 2, i * blockSize + blockSize / 2);
          } else {
            text(dist, j * blockSize + blockSize / 2, i * blockSize + blockSize / 2);
          }
        }
      }
    }
  }
}

// Declare our custom object
Board game;
// Display
PFont style;

void setup() {
  size(500, 500);
  // Create our custom object
  game = new Board(7, 7);
  // Set the font
  style = createFont("FreeMono", 30);
  textAlign(CENTER, CENTER);
  textFont(style, 30);
}

void draw() {
  background(0);
  game.draw();
}

void mousePressed() {
  game.guess(mouseX, mouseY);
}
