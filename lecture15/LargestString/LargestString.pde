void setup() {
  String[] words = {"Rhode Island", "Pennsylvania", "Delaware", "Massachusetts", "New York"};
  String result = largest(words);
  println("A largest string is: " + result);
}
String largest(String[] words) {
  if(words.length > 0) {
    String largest = words[0];
    int i = 1;
    while(i < words.length) {
      if(largest.length() < words[i].length()) {
        largest = words[i];
      }
      i++;
    }
    return largest;
  } else {
    return null;
  }
}
