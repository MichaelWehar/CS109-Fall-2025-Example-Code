void modifyFirstElement(int[] arr) {
  if(arr.length > 0) {
    arr[0] = 1000;
  }
}
void modifyInt(int x) {
  x = 77;
}
void setup() {
  int x = 5;
  int[] arr = {5, 10, 15};
  println(x);
  printArray(arr);
  modifyInt(x);
  modifyFirstElement(arr);
  println(x);
  printArray(arr);
}
