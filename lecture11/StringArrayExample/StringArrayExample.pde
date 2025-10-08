int combinedLengthHelper(int i, String[] words) {
  if(i < words.length) {
    return words[i].length() + combinedLengthHelper(i + 1, words);
  } else {
    return 0;
  }
}
// Computes the sum of the lengths of all of the strings
int combinedLength(String[] words) {
  return combinedLengthHelper(0, words);
}
void setup() {
  String[] fruit = {"apple", "orange", "grape", "plum"};
  println(combinedLength(fruit));
}
