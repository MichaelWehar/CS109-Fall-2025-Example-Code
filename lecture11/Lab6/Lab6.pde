float[] xValues = {100, 100, 100, 100, 100, 100, 100, 100};
float[] yValues = {50, 100, 150, 200, 250, 300, 350, 400};
int[] dxValues = {0, 1, 2, 3, 0, -1, -2, -3};
int[] dyValues = {2, 3, 0, 1, -2, -3, 0, -1};
int r = 25;

void drawBalls(int i, int len) {
  if(i < len) {
    ellipse(xValues[i], yValues[i], 2 * r, 2 * r);
    drawBalls(i + 1, len);
  }
}

void moveBalls(int i, int len) {
  if(i < len) {
    xValues[i] += dxValues[i];
    yValues[i] += dyValues[i];
    moveBalls(i + 1, len);
  }
}

void checkBalls(int i, int len) {
  if(i < len) {
    if(xValues[i] - r < 0 || xValues[i] + r > 500) {
      dxValues[i] *= -1;
    }
    if(yValues[i] - r < 0 || yValues[i] + r > 500) {
      dyValues[i] *= -1;
    }
    checkBalls(i + 1, len);
  }
}

float computeMin(int i, int len) {
  if(i < len - 1) {
    float current = yValues[i] - r;
    float min = computeMin(i + 1, len);
    if(current < min) {
      return current;
    } else {
      return min;
    }
  } else {
    return yValues[i] - r;
  }
}

void setup() {
 size(500, 500);
 background(0);
 fill(255);
}

void draw() {
  background(0);
  float min = computeMin(0, xValues.length);
  rect(0, 0, 500, min);
  drawBalls(0, xValues.length);
  moveBalls(0, xValues.length);
  checkBalls(0, xValues.length);
}
