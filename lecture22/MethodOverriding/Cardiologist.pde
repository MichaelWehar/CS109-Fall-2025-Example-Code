class Cardiologist extends Doctor {
  String getJobTitle() { // method overriding
    return "Cardiologist";
  }
  // Just added this!
  public void checkHeart() {
    // do something
  }
}
