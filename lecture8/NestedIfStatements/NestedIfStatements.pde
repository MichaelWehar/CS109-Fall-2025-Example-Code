/*
 * To be a sentence, it must be at least 5
 * chars long, start with a capital letter,
 * and end with '.', '?', or '!'.
 * @param a string
 * @return true if the string is a sentence,
 * false otherwise.
 */
boolean isASentence(String s) {
  if(s.length() >= 5) {
    String firstChar = s.substring(0, 1);
    if(firstChar.toUpperCase().equals(firstChar)) {
      int length = s.length();
      String lastChar = s.substring(length - 1, length);
      if(lastChar.equals(".") || lastChar.equals("?") || lastChar.equals("!")) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}
boolean isASentenceAlternative(String s) {
  // Try it out
  return false;
}
void setup() {
  String a = "This is a test";
  String b = "What about this?";
  String c = "and could this be!";
  String d = "Hi!";
  println(isASentence(a));
  println(isASentence(b));
  println(isASentence(c));
  println(isASentence(d));
}
