class Fruit {
  String type;
  Fruit(String type) {
    this.setType(type);
  }
  String getType() {
    return type;
  }
  void setType(String type) {
    this.type = type;
  }
}

void setup() {
    Fruit a = new Fruit("Apple");
    Fruit b = new Fruit("Banana");
    Fruit c = new Fruit("Cherry");
    println("VALUES:");
    println("\ta is " + a.getType());
    println("\tb is " + b.getType());
    println("\tc is " + c.getType());

    a = b;
    b.setType("Grape");
    println("VALUES:");
    println("\ta is " + a.getType());
    println("\tb is " + b.getType());
    println("\tc is " + c.getType());

    a = new Fruit("Orange");
    c = b;
    c.setType("Kiwi");
    println("VALUES:");
    println("\ta is " + a.getType());
    println("\tb is " + b.getType());
    println("\tc is " + c.getType());
}
