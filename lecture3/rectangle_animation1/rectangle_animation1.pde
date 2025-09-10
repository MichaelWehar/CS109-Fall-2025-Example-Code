// Global variables (that can be used everywhere)
int x = 0;

// setup is called once at the beginning
void setup() {
  size(600, 600);
  background(0, 0, 0);
  noFill();
  stroke(255, 255, 255);
  strokeWeight(3);
  // Adds centering: rectMode(CENTER);
}

// draw is called repeatedly until you click stop
void draw() {
  // Add this to clear the canvas:
  // background(0, 0, 0);
  rect(x, x, 600 - 2 * x, 600 - 2 * x);
  // With centering: rect(300, 300, 600 - x, 600 - x);
  x += 20;
}
