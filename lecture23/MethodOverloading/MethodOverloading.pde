// Calls this version if only one input is provided
void draw(int length) {
  println("First draw function was called!");
}

// Calls this version if two inputs are provided
void draw(int width, int height) {
  println("Second draw function was called!");
}

void setup() {
  draw(5);
  draw(2, 7);
}
