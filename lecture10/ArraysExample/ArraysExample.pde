int sumOfValuesHelper(int i, int[] array) {
  if(i < array.length) {
    return array[i] + sumOfValuesHelper(i + 1, array);
  } else {
    return 0;
  }
}
int sumOfValues(int[] array) {
  return sumOfValuesHelper(0, array);
}
void setup() {
  // An array containing 4 values
  int[] x = {10, 15, 20, 25};
  // An array that can store 3 values
  int[] y = new int[3];
  // Reset values
  x[1] = 7;
  y[0] = 5;
  y[1] = 0;
  y[2] = 2;
  // Print the values
  println(x[0] + " " + x[1] + " " + x[2] + " " + x[3]);
  println(y[0]);
  println(y[1]);
  println(y[2]);
  // Get the length of the array
  println("Length: " + x.length);
  println("Length: " + y.length);
  // Print sum recursively
  println("Sum: " + sumOfValues(x));
  println("Sum: " + sumOfValues(y));
}
