void printAllHelper(int i, String[] arr) {
  // Approach 1:
  if(i < arr.length) {
    println(arr[i]);
    printAllHelper(i + 1, arr);
  }
  // Approach 2:
  /*if(i >= arr.length) {
    return;
  }
  println(arr[i]);
  printAllHelper(i + 1, arr);*/
}
void printAll(String[] arr) {
  printAllHelper(0, arr);
}
void setup() {
  String[] arr = {"Bryn", "Mawr", "College"};
  printAll(arr);
  // Processing's Print Array Function
  printArray(arr);
}
