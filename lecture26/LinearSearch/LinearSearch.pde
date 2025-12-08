// Linear Search Problem
boolean linearSearch(int[] arr, int k) {
  for(int i = 0; i < arr.length; i++) {
    if(arr[i] == k) {
      return true;
    }
  }
  return false;
}

void setup() {
  int[] arr = {5, 3, 1, 8, 9, 100, 17, 24, -1, -20, 0};
  println("Does arr contain 17? " + linearSearch(arr, 17));
  println("Does arr contain 25? " + linearSearch(arr, 25));
}
