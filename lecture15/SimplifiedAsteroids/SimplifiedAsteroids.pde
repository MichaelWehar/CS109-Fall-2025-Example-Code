// Projectile
float projX = 250;
float projY = 250;
float projDX = 0;
float projDY = 0;
float projR = 5;
// Asteroids
int n = 0; // spawned counter
float[] circX = new float[50];
float[] circY = new float[50];
float[] circDX = new float[50];
float[] circDY = new float[50];
float[] circR = new float[50];
boolean[] destroyed = new boolean[50];
// Win condition
int destroyedCount = 0;
// Loss condition
boolean youLost = false;
// Display
PFont style;
// Timer
int count = 0;

void setup() {
  size(500, 500);
  background(0);
  fill(255);
  stroke(255);
  strokeWeight(3);
  style = createFont("FreeMono", 30);
  textAlign(CENTER, CENTER);
  // spawnInitialAsteroids(5);
}

void spawnInitialAsteroids(int k) {
  for(int i = 0; i < k; i++) {
    spawnNewAsteroid();
  }
}

void spawnNewAsteroid() {
  if(n < 50) {
    circX[n] = 500 * random(1);
    circY[n] = 0;
    circR[n] = 10 + 20 * random(1);
    circDX[n] = random(1);
    circDY[n] = sqrt(1 - sq(circDX[n]));
    if(random(1) < 0.5) {
      circY[n] = 499;
      circDY[n] *= -1;
    }
    n++;
  }
}

void displayText(String s, int r, int g, int b) {
  fill(r, g, b);
  textFont(style, 30);
  text(s, 250, 250);
}

void draw() {
  background(0);
  if(youLost){
    displayText("Game Over!", 255, 100, 100);
    return;
  } else if(n >= 50 && destroyedCount >= 50) {
    displayText("You Won!", 100, 255, 100);
    return;
  }
  // Your Ship
  fill(255);
  stroke(255);
  ellipse(250, 250, 20, 20);
  // Projectile
  ellipse(projX, projY, projR, projR);
  projX += 2 * projDX;
  projY += 2 * projDY;
  projX = (projX + 500) % 500;
  projY = (projY + 500) % 500;
  // Asteroids
  fill(200, 150, 150);
  stroke(200, 150, 150);
  for(int i = 0; i < n; i++) {
    if(!destroyed[i]) {
      ellipse(circX[i], circY[i], 2 * circR[i], 2 * circR[i]);
      circX[i] += circDX[i];
      circY[i] += circDY[i];
      circX[i] = (circX[i] + 500) % 500;
      circY[i] = (circY[i] + 500) % 500;
    }
  }
  // Collision
  for(int i = 0; i < n; i++) {
    if(!destroyed[i] && dist(projX, projY, circX[i], circY[i]) < circR[i] + projR) {
      destroyed[i] = true;
      destroyedCount++;
    } else if(!destroyed[i] && dist(250, 250, circX[i], circY[i]) < circR[i] + 10) {
      youLost = true;
    }
  }
  // Timer
  if(count % 20 == 0) {
    spawnNewAsteroid();
  }
  count++;
}

void mousePressed() {
  projX = 250;
  projY = 250;
  projDX = mouseX - 250;
  projDY = mouseY - 250;
  float dist = dist(0, 0, projDX, projDY);
  if(dist != 0) {
    projDX /= dist;
    projDY /= dist;
  } else {
    projDX = 0;
    projDY = 0;
  }
}
