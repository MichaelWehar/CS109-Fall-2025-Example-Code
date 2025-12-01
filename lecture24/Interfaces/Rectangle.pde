class Rectangle implements Drawable, Comparable<Rectangle> {
  int width;
  int height;
  Rectangle(int width, int height) {
    this.width = width;
    this.height = height;
  }
  int computeArea() {
    return this.width * this.height;
  }
  int compareTo(Rectangle other) {
    return this.computeArea() - other.computeArea();
  }
  void draw(String symbol) {
    for(int i = 0; i < height; i++) {
      for(int j = 0; j < width; j++) {
        print(symbol);
      }
      println();
    }
  }
}
