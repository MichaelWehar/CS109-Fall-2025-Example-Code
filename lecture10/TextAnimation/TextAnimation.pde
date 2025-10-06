// For displaying text
PFont style;
String mySentence = "This is my sentence!";
int i = 0;

void setup() {
  size(600, 600);
  // Equal width font type
  // or a monospace font
  style = createFont("FreeMono", 30);
  // Call this to check which fonts are available:
  // printArray(PFont.list());
  textAlign(CENTER, CENTER);
  frameRate(4);
}

void draw() {
  background(255);
  fill(0);
  textFont(style, 30);
  text(mySentence, 300, 300);
  // Approach 1: Remove chars
  /*if(mySentence.length() > 1) {
    mySentence = mySentence.substring(1);
  } else {
    mySentence = "";
  }*/
  // Approach 2: Replace chars
  if(i < mySentence.length()) {
    mySentence = mySentence.substring(0, i) + " " + mySentence.substring(i + 1);
    i++;
  }
}
