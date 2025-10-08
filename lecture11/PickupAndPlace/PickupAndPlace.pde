boolean clicked = false;
int x = 200;
int y = 200;
int r = 50;

void setup() {
  size(500, 500);
  background(0);
  fill(255);
}

void draw() {
  background(0);
  if(clicked) {
    x = mouseX;
    y = mouseY;
  }
  ellipse(x, y, 2 * r, 2 * r);
}

void mousePressed() {
  if(dist(x, y, mouseX, mouseY) < r) {
    clicked = !clicked;
  }
}
