void incrementAllHelper(int i, int[] arr) {
  if(i < arr.length) {
    arr[i]++;
    incrementAllHelper(i + 1, arr);
  }
}
void incrementAll(int[] arr) {
  incrementAllHelper(0, arr);
}
void setup() {
  int[] a = {3, 4, 6};
  int[] b = {10, 9, 8, 7, 0};
  int[] c = {5};
  int[] d = {};
  incrementAll(a);
  incrementAll(b);
  incrementAll(c);
  incrementAll(d);
  // Print A
  printArray(a);
  println();
  // Print B
  printArray(b);
  println();
  // Print C
  printArray(c);
  println();
  // Print D
  printArray(d);
  println();
}
