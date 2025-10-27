void setup() {
  int[] x = {9, 8, 7, 6, 5, 4, 3, 2, 1};
  recursivePrint(x, 0);
  whilePrint(x);
  forPrint(x);
  forEachPrint(x);
}
void recursivePrint(int[] x, int i) {
  if(i < x.length) {
    print(x[i] + " ");
    recursivePrint(x, i + 1);
  } else {
    println();
  }
}
void whilePrint(int[] x) {
  int i = 0;
  while(i < x.length) {
    print(x[i] + " ");
    i++;
  }
  println();
}
void forPrint(int[] x) {
  for(int i = 0; i < x.length; i++) {
    print(x[i] + " ");
  }
  println();
}
void forEachPrint(int[] x) {
  for(int element : x) {
    print(element + " ");
  }
  println();
}
