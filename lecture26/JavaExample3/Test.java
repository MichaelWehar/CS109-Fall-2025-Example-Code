public class Test {
  public static void main(String[] args) {
    // This part is the same as example 2
    Doctor alice = new Doctor(); // Default constructor
    System.out.println(alice.getDegreeType());
    System.out.println(alice.getJobTitle());
    Cardiologist bob = new Cardiologist(); // Default constructor
    System.out.println(bob.getDegreeType());
    System.out.println(bob.getJobTitle());
	  // We cannot have: alice.checkHeart();
    bob.checkHeart();
    // This part is new
    Doctor charlie = new Cardiologist(); // This is polymorphism
    System.out.println(charlie.getDegreeType()); // MD
    System.out.println(charlie.getJobTitle()); // Cardiologist
    // We cannot have: charlie.checkHeart();
  }
}
