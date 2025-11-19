void setup() {
  Identity alice = new Identity(123, 456);
  Identity bob = new Identity(789, 842);
  println(alice.publicKey);
  println(alice.equals(bob));
}
