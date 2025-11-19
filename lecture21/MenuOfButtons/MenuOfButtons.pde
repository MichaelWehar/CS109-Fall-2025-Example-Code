// Global Variables
Menu m;
PFont style;

void setup() {
  // Setup canvas
  size(500, 500);
  fill(255);
  stroke(0);
  strokeWeight(4);
  // Setup text
  style = createFont("FreeMono", 30);
  textAlign(CENTER, CENTER);
  textFont(style, 30);
  // Create menu
  m = new Menu();
  m.addButton(new Button(20, 100, 200, 70, "First", 255, 100, 100));
  m.addButton(new Button(20, 225, 200, 70, "Second", 100, 255, 100));
  m.addButton(new Button(20, 350, 200, 70, "Third", 100, 100, 255));
}

void draw() {
  background(255);
  m.draw();
}

void mousePressed() {
  m.shiftX(10);
}

class Button {
  int x;
  int y;
  int w;
  int h;
  String label;
  int r;
  int g;
  int b;
  Button(int x, int y, int w, int h, String label, int r, int g, int b) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  void draw() {
    fill(this.r, this.g, this.b);
    rect(this.x, this.y, this.w, this.h);
    fill(0);
    text(this.label, this.x + this.w / 2, this.y + this.h / 2);
  }
}

class Menu {
  Button[] buttons;
  Menu() {
    buttons = new Button[0];
  }
  void addButton(Button b) {
    int len = buttons.length;
    // Creates a new array with length (len + 1)
    Button[] newArr = new Button[len + 1];
    // Copies over all of the elements from buttons to newArr
    for(int i = 0; i < len; i++) {
      newArr[i] = buttons[i];
    }
    // Places b at the last position in newArr
    newArr[len] = b;
    // Makes the buttons member variable
    // now refer to the new array
    buttons = newArr;
  }
  void shiftX(int dx) {
    for(int i = 0; i < buttons.length; i++) {
      buttons[i].x += dx;
    }
  }
  void draw() {
    for(int i = 0; i < buttons.length; i++) {
      buttons[i].draw();
    }
  }
}
