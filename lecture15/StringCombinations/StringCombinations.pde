void setup() {
  String[] prefixes = {"pre", "post", "re"};
  String[] roots = {"define", "interview", "build"};
  // This will combine every possible prefix
  // with every possible root word.
  combineWordsFor(prefixes, roots);
  combineWordsForEach(prefixes, roots);
}
void combineWordsFor(String[] words1, String[] words2) {
  for(int i = 0; i < words1.length; i++) {
    for(int j = 0; j < words2.length; j++) {
      println(words1[i] + words2[j]);
    }
  }
}
void combineWordsForEach(String[] words1, String[] words2) {
  for(String w1 : words1) {
    for(String w2 : words2) {
      println(w1 + w2);
    }
  }
}
