size(500, 500);
// First slice of the pie
fill(250, 0, 0);
arc(250, 250, 200, 200, 0, PI / 3);
// Second slice of the pie
fill(0, 255, 0);
arc(250, 250, 200, 200, radians(135), radians(225));
// Just the arc without fill
noFill();
strokeWeight(10);
stroke(0, 0, 255);
arc(250, 250, 200, 200, 3 * PI / 2, radians(340));
