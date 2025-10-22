void setup() {
  bug1();
  // bug2(19);
  // bug3();
}
void bug1() {
  String name = "Bryn Mawr College";
  int len = name.length();
  // Should print the last char, but fails.
  println(name.charAt(len));
}
void bug2(int n) {
  if(n == 1) { //<>//
    println("Finished!");
  } else {
    bug2(n / 3);
  }
}
void bug3() {
  int[] arr = new int[3];
  arr[0] = 54;
  arr[1] = 32;
  arr[2] = 18;
  arr[3] = 20;
  println(arr[0]);
}
