class Circle {
  int x;
  int y;
  int r;
  Circle(int inputX, int inputY, int inputR) {
    x = inputX;
    y = inputY;
    r = inputR;
  }
  void draw() {
    ellipse(x, y, 2 * r, 2 * r);
  }
}

// Global variable
Circle[] shapes;

void setup() {
  // Canvas
  size(500, 500);
  background(0);
  fill(255);
  // Read from file
  String filename = "circles.csv";
  String[] records = loadStrings(filename);
  // Create circle objects
  int len = records.length;
  shapes = new Circle[len];
  for(int i = 0; i < shapes.length; i++) {
    String[] values = records[i].split(",");
    int x = int(values[0]);
    int y = int(values[1]);
    int r = int(values[2]);
    shapes[i] = new Circle(x, y, r);
  }
}

void draw() {
  for(int i = 0; i < shapes.length; i++) {
    shapes[i].draw();
  }
}
