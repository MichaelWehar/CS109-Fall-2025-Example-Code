String replaceCharsHelper(int i, String s, char c1, char c2) {
  if(i < s.length()) {
    if(s.charAt(i) == c1) {
      return replaceCharsHelper(i + 1, s.substring(0, i) + c2 + s.substring(i + 1), c1, c2);
    } else {
      return replaceCharsHelper(i + 1, s, c1, c2);
    }
  } else {
    return s;
  }
}
String replaceChars(String s, char c1, char c2) {
  return replaceCharsHelper(0, s, c1, c2);
}
String replaceCharsAlt(String s, char c1, char c2) {
  if(s.length() > 0) {
    if(s.charAt(0) == c1) {
      return c2 + replaceCharsAlt(s.substring(1), c1, c2);
    } else {
      return s.charAt(0) + replaceCharsAlt(s.substring(1), c1, c2);
    }
  } else {
    return s;
  }
}
void setup() {
  println(replaceChars("philadelphia", 'a', '4'));
  println(replaceCharsAlt("philadelphia", 'a', '4'));
}
