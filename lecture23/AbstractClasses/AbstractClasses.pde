void setup() {
  // Creates an apple seed and plants it
  AppleSeed s1 = new AppleSeed();
  s1.plant();
  // We can still use polymorphism!
  Seed s2 = new AppleSeed();
  s2.plant();
  // We cannot do the following because
  // Seed is an abstract class!
  // Seed s3 = new Seed();
  // s3.plant();
}
