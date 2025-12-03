void setup() {
  Doctor charlie = new Cardiologist(); // This is polymorphism
  println(charlie.getDegreeType()); // MD
  println(charlie.getJobTitle()); // Cardiologist <- because child always wins!
  // Reversing polymorphism
  if(charlie instanceof Cardiologist) { // <- this checks that charlie is a Cardiologist
    Cardiologist charlie2 = (Cardiologist) charlie; // <- this is called casting
    charlie2.checkHeart();
  } else {
    println("Charlie is not a Cardiologist");
  }
}
