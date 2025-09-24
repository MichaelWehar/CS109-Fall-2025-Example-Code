PFont f;

void setup() {
  size(500, 500);
  f = createFont("Times New Roman", 30);
}

void draw() {
  background(255);
  textFont(f, 30);
  fill(0);
  String s = "Hello World!";
  text(s, 170, 250);
}
