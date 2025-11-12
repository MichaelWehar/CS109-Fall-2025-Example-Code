final int SPACE = 32;
// This true or false value is sometimes
// referred to as a "flag"
boolean displayKeyCode = false;
PFont style;
String s;

void setup() {
  // Canvas
  size(500, 500);
  background(255);
  fill(0);
  // Text
  s = "Press An Arrow Key!";
  style = createFont("FreeMono", 30);
  textAlign(CENTER, CENTER);
  textFont(style, 30);
}

void draw() {
  if(displayKeyCode) {
    background(200);
  } else {
    background(255);
  }
  text(s, 250, 250);
}

void mousePressed() {
  displayKeyCode = !displayKeyCode;
}

void keyPressed() {
  if(displayKeyCode) {
    s = "" + keyCode;
  } else {
    if(keyCode == UP) {
      s = "Up Arrow";
    } else if(keyCode == LEFT) {
      s = "Left Arrow";
    } else if(keyCode == DOWN) {
      s = "Down Arrow";
    } else if(keyCode == RIGHT) {
      s = "Right Arrow";
    } else if(keyCode == SPACE) { // Or, key == ' '
      s = "Space Bar";
    } else {
      s = "" + keyCode;
    }
  }
}
