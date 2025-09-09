// Example of making a simple character.
// By Michael Wehar.

int eyeSize = 50;
int mouthShortSize = 25;
int mouthLength = 150;
int mouthHeight = 30;

// Testing order of operations
println(eyeSize / mouthHeight);
println(mouthShortSize % mouthHeight);
println(eyeSize + mouthHeight * 2);

// This creates the canvas.
size(500, 500);
// This sets the background color to pink.
background(255, 100, 100);
// This draws the face.
rect(100, 100, 300, 300);
// This draws the eyes
fill(200, 200, 200);
ellipse(180, 200, eyeSize, eyeSize);
ellipse(320, 200, eyeSize, eyeSize);
// This draws the nose
line(240, 240, 270, 270);
line(245, 265, 270, 270);
// This draws the mouth.
rect(150, 295, mouthShortSize, mouthShortSize);
rect(325, 295, mouthShortSize, mouthShortSize);
rect(175, 320, mouthLength, mouthHeight);
