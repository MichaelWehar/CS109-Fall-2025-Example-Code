void setup() {
  int[] x = {5, 2, 7};
  int[] y = copy(x);
  println("Before:");
  printArray(x);
  println();
  printArray(y);
  println();
  x[1] = 0;
  y[2] = 9;
  println("After:");
  printArray(x);
  println();
  printArray(y);
  println();
}
int[] copy(int[] oldArr) {
  int len = oldArr.length;
  int[] newArr = new int[len];
  copyValues(0, oldArr, newArr);
  return newArr;
}
void copyValues(int i, int[] oldArr, int[] newArr) {
  if(i < oldArr.length) {
    newArr[i] = oldArr[i];
    copyValues(i + 1, oldArr, newArr);
  }
}
