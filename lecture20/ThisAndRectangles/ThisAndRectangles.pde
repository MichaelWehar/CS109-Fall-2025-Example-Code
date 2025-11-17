class Rectangle {
  final int maxH = 100; // maximum height of the rectangle
  int w; // width of the rectangle
  int h; // height of the rectangle
  public Rectangle(int w, int h) {
    this.w = w;
    this.h = min(h, maxH);
  }
  // Getter methods
  public int getWidth() {
    return this.w;
  }
  public int getHeight() {
    return this.h;
  }
  // Setter methods
  public void setWidth(int w) {
    this.w = w;
  }
  public void setHeight(int h) {
    this.h = h;
  }
  // toString method
  public String toString() {
    return "width = " + this.w + ", height = " + this.h;
  }
}

void setup() {
    Rectangle rect1 = new Rectangle(3, 5);
    Rectangle rect2 = new Rectangle(2, 7);
    // Should not do this if w is private:
    // rect1.w = 2;
    // Instead, do this:
    rect1.setWidth(8);
    println(rect1.toString());
    println(rect2.toString());
    // Cannot do this because maxH is final:
    // rect1.maxH = 5;
}
