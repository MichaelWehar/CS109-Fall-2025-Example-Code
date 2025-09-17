// Three Actions
void openAction(String x) {
  println("Open " + x);
}
void closeAction(String x) {
  println("Close " + x);
}
void pourAction(String x) {
  openAction(x);
  println("Pour " + x);
  closeAction(x);
}

// Perform actions on Refridgerator
void openRefridgerator() {
  openAction("Refridgerator");
}
void closeRefridgerator() {
  closeAction("Refridgerator");
}

// Perform action on Milk
void pourMilk() {
  pourAction("Milk");
}

// Combined action
void getAGlassOfMilk() {
  openRefridgerator();
  pourMilk();
  closeRefridgerator();
}

// Runs code
void setup() {
  getAGlassOfMilk();
}
