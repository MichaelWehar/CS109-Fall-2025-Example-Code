// Paddle
int paddleHeight = 100;

// Ball
float x;
float y;
float dx;
float dy;
int r;

// Speed
float speedFactor = 2.0;

void setup() {
  size(600, 600);
  strokeWeight(15);
  r = 40;
  x = random(200, 400);
  y = random(200, 400);
  dx = speedFactor * random(1, 5);
  dy = speedFactor * random(1, 5);
}

void draw() {
  background(0);
  stroke(255);
  // Draw paddles
  line(0, mouseY - paddleHeight / 2, 0, mouseY + paddleHeight / 2);
  line(600, mouseY - paddleHeight / 2, 600, mouseY + paddleHeight / 2);
  // Draw ball
  int d = 2 * r;
  ellipse(x, y, d, d);
  // Bounce off boundary
  if(y - r < 0 || y + r > 600) {
    dy *= -1;
  }
  // Bounce off paddles
  if(x - r < 0 || x + r > 600) {
    if(y <= mouseY + paddleHeight / 2 && y >= mouseY - paddleHeight / 2) {
      // Bounce!
      dx *= -1;
    } else {
      // Respawn!
      x = 300;
      y = 300;
      // Ball gets smaller and game gets harder
      // as you continue to miss.
      r -= 5;
    }
  }
  // Movement
  x += dx;
  y += dy;
}
