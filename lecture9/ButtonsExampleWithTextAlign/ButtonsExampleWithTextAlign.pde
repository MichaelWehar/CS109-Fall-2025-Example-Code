// Global variables
// Booleans for controling the display
boolean backgroundIsRed = false;
boolean boundaryIsOn = true;
// Button positions and dimensions
int x1 = 150;
int y1 = 250;
int w1 = 100;
int h1 = 100;
int x2 = 350;
int y2 = 250;
int w2 = 100;
int h2 = 100;
// For displaying text
PFont style;

boolean mouseIsInBox(int leftX, int rightX, int topY, int bottomY) {
  // if(mouseX >= leftX && mouseX <= rightX && mouseY >= topY && mouseY <= bottomY) {
  //   return true;
  // } else {
  //   return false;
  // }
  // Simplified approach:
  return mouseX >= leftX && mouseX <= rightX && mouseY >= topY && mouseY <= bottomY;
}

void setup() {
  size(600, 600);
  strokeWeight(10);
  style = createFont("Times New Roman", 30);
  textAlign(CENTER, CENTER);
}

void draw() {
  // Check the boolean variable to change background
  if(backgroundIsRed) {
    background(255, 0, 0); 
  } else {
    background(0, 0, 255);
  }
  // Check the boolean variable to change the boundary
  if(boundaryIsOn) {
    stroke(0);
  } else {
    noStroke(); 
  }
  // Draw the buttons
  fill(255);
  rect(x1, y1, w1, h1);
  rect(x2, y2, w2, h2);
  // Draw the labels
  fill(0);
  textFont(style, 30);
  text("Color", x1 + w1 / 2, y1 + h1 / 2);
  text("Lines", x2 + w2 / 2, y2 + h2 / 2);
}

void mousePressed() {
  if(mouseIsInBox(x1, x1 + w1, y1, y1 + h1)) {
    backgroundIsRed = !backgroundIsRed;
  }
  if(mouseIsInBox(x2, x2 + w2, y2, y2 + h2)) {
    boundaryIsOn = !boundaryIsOn;
  }
}
