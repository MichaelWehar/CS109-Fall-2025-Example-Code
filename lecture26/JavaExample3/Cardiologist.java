public class Cardiologist extends Doctor {
  public String getJobTitle() { // method overriding
    return "Cardiologist";
  }
  // This method was added
  public void checkHeart() {
    // do something
  }
}
