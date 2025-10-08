int i = 0;
int[] arr = {100, 200, 300, 400, 500, 400, 300, 200, 100, 200, 100, 150, 200, 100, 300, 50, 400};
float barWidth;

void setup() {
  size(500, 500);
  background(255);
  fill(255, 0, 0);
  barWidth = 500.0 / arr.length;
}

void draw() {
  if(i < arr.length) {
    rect(i * barWidth, 500 - arr[i], barWidth, arr[i]);
  }
  i++;
}
