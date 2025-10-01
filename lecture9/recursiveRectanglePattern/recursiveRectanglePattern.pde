void recursiveRect(int l) {
  if(l > 25) {
    int smallL = int(0.05 * l);
    float offset = (l + smallL) / 2;
    rect(250, 250, l, l);
    rect(250 - offset, 250, smallL, smallL);
    rect(250 + offset, 250, smallL, smallL);
    rect(250, 250 - offset, smallL, smallL);
    rect(250, 250 + offset, smallL, smallL);
    int newL = int(0.85 * l);
    recursiveRect(newL);
  }
}

void setup() {
  size(500, 500);
  rectMode(CENTER);
  recursiveRect(425);
}
