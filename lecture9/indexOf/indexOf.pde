int indexOfHelper(int i, char c, String s) {
  if(i < s.length()) {
    if(s.charAt(i) == c) {
      return i;
    } else {
      return indexOfHelper(i + 1, c, s);
    }
  } else {
    return -1;
  }
}

// Returns the index of the first time
// that the char c appears in String s,
// or returns -1 if not found.
int indexOf(char c, String s) {
  return indexOfHelper(0, c, s);
}

void setup() {
  println(indexOf('a', "apple"));
  println(indexOf('a', "berry"));
  println(indexOf('a', "philadelphia"));
}
