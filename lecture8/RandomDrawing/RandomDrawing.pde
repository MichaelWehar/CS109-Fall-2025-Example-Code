float x = 300;
float y = 300;
float xFactor = 20;
float yFactor = 20;

void setup() {
  size(600, 600);
  background(0);
  stroke(255);
  strokeWeight(5);
}

void draw() {
  float newX = x + xFactor * random(-1, 1);
  float newY = y + yFactor * random(-1, 1);
  if(newX >= 0 && newX <= 600 && newY >= 0 && newY <= 600) {
    line(x, y, newX, newY);
    x = newX;
    y = newY;
  }
}
