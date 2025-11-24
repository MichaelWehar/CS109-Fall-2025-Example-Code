void setup() {
  Doctor alice = new Doctor(); // Default constructor
  println(alice.getDegreeType());
  println(alice.getJobTitle());
  Cardiologist bob = new Cardiologist(); // Default constructor
  println(bob.getDegreeType());
  println(bob.getJobTitle());
  bob.checkHeart();
  // Just added this!
  Doctor charlie = new Cardiologist(); // This is polymorphism
  println(charlie.getDegreeType()); // MD
  println(charlie.getJobTitle()); // Cardiologist <- because child always wins!
  // Cannot do this: charlie.checkHeart();
}
