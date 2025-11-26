// Partially specified class
abstract class Seed {
  String type;
  String toString() {
    return type;
  }
  // This method has not been implemented
  // so we marked it as abstract
  abstract void plant();
}
