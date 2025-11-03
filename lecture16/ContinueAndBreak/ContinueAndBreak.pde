void setup() {
  // Introducing break command
  // This is used to exit a loop
  String s = "bryn_mawr_college";
  for(int i = 0; i < s.length(); i++) {
    if(s.charAt(i) == 'a') {
      break;
    }
    print(s.charAt(i) + " ");
  }
  println();
  // Introducing continue command
  // This is used to skip an iteration
  int[] arr = {5, 3, 2, 8, 1, 6, 9, 7};
  for(int i = 0; i < arr.length; i++) {
    if(arr[i] % 2 == 0) {
      continue;
    }
    print(arr[i] + " ");
  }
  println();
}
