// This is an example of an animation.
// The character is winking.

// Variable used to create the animation effect
int x = 0;

void setup() {
  size(500, 500);
  background(100, 100, 100);
  // Draw the face
  rect(100, 100, 300, 300);
  // Draw the eyes
  fill(200, 200, 200);
  ellipse(180, 200, 50, 50);
  ellipse(320, 200, 50, 50);
  // Draw the nose
  line(240, 240, 270, 270);
  line(245, 265, 270, 270);
  // Draw the mouth
  rect(150, 295, 25, 25);
  rect(325, 295, 25, 25);
  rect(175, 320, 150, 30);
}

void draw() {
  // Draw the eye open
  fill(200, 200, 200);
  ellipse(180, 200, 50, 50);
  // Overtop, I draw the eyelid
  if(x % 80 < 20) {
    fill(200, 200, 200);
    ellipse(180, 200, 50, 50);
  } else if(x % 80 < 40) {
    fill(255, 255, 255);
    ellipse(180, 200, 50, 25);
  } else if(x % 80 < 60) {
    fill(255, 255, 255);
    ellipse(180, 200, 50, 50);
  } else {
    fill(255, 255, 255);
    ellipse(180, 200, 50, 25);
  }
  x++; // Add one to x, or increment x
  println(x);
}
