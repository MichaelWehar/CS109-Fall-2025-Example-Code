// Challenge 1: Draw a circle within a square
void drawCircleWithinSquare(int x, int y, int l, int red, int green, int blue) {
  rectMode(CENTER);
  fill(red, green, blue);
  rect(x, y, l, l);
  fill(red - 50, green - 50, blue - 50);
  ellipse(x, y, l, l);
}

// Challenge 2: Draw a square within a circle
void drawSquareWithinCircle(int x, int y, int r, int red, int green, int blue) {
  rectMode(CENTER);
  // diameter is 2 times radius
  int d = 2 * r;
  fill(red, green, blue);
  ellipse(x, y, d, d);
  int squareLength = int(d * cos(PI / 4));
  fill(red - 50, green - 50, blue - 50);
  rect(x, y, squareLength, squareLength);
}

// Challenge 3: Draw a space ship
void drawSpaceShip(int x, int y, int w) {
   fill(70, 70, 70);
   ellipse(x, y, w, w / 2);
   fill(70, 255, 70);
   ellipse(x, y - w / 4, 2 * w / 5, w / 3);
}

// Draw the shapes here
void setup() {
  size(500, 500);
  // Drawing three circles within squares
  drawCircleWithinSquare(200, 200, 200, 250, 100, 50);
  drawCircleWithinSquare(400, 400, 20, 250, 100, 50);
  drawCircleWithinSquare(450, 300, 25, 250, 100, 50);
  // Drawing two squares within circles
  drawSquareWithinCircle(420, 200, 70, 50, 250, 50);
  drawSquareWithinCircle(100, 400, 80, 50, 250, 50);
  // Drawing three space ships
  drawSpaceShip(200, 50, 50);
  drawSpaceShip(300, 50, 40);
  drawSpaceShip(400, 50, 30);
}

// Not needed right now
void draw() {
  
}
