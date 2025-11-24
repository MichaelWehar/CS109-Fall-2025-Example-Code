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
  ArrayList<Button> buttons;
  Menu() {
    buttons = new ArrayList<Button>();
  }
  void addButton(Button b) {
    buttons.add(b);
  }
  void shiftX(int dx) {
    for(int i = 0; i < buttons.size(); i++) {
      buttons.get(i).x += dx;
    }
  }
  void draw() {
    for(int i = 0; i < buttons.size(); i++) {
      buttons.get(i).draw();
    }
  }
}
