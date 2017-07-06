// Brad Tweardy
// Dineen Parker
// Zach Brown
// MSDS 6390 - 404
// Project 3

Obj ellipse1;
Obj ellipse2;
Obj ellipse3;
Obj rect1;
Obj rect2;
Obj rect3;
 
void setup() {
  size(800, 800);
  // Define the size and orbital radius for each of the objects.
  ellipse1 = new Obj(150, 10);
  ellipse2 = new Obj(50, 15);
  ellipse3 = new Obj(250, 20);
  rect1 = new Obj(100, 20);
  rect2 = new Obj(200, 12);
  rect3 = new Obj(300, 25);
}
 
void draw() {
  background(0);
  stroke(0);
  
  // Determine if the center circle is yellow or blinking white and draw it
  color sunCol;
  if (int(random(25)) == 1){
    sunCol = color(255);
  }
  else {
    sunCol = color(150, 150, 0);
  }
  fill(sunCol);
  ellipse(width / 2, height / 2, 30, 30);

  // Draw the ellipses and rectangles orbiting around the center
  ellipse1.orbit(-1);
  ellipse1.display(color(random(255), random(255), random(255)), true);
  ellipse2.orbit(-1);
  ellipse2.display(color(random(255), random(255), random(255)), true);
  ellipse3.orbit(-1);
  ellipse3.display(color(random(255), random(255), random(255)), true);
  rect1.orbit(1);
  rect1.display(color(random(255), random(255), random(255)), false);
  rect2.orbit(1);
  rect2.display(color(random(255), random(255), random(255)), false); 
  rect3.orbit(1);
  rect3.display(color(random(255), random(255), random(255)), false);
}
 
class Obj {
  color col;
  float x;
  float y, z;
  float csize;
  float radius;
  float vr;
  float theta;
 
  Obj(float tempRadius, float tempSize) {
    radius = tempRadius;
    vr = sqrt(2 * 800 / sq(radius));
    x = width / 2;
    y = (height / 2) - radius;
    csize = tempSize;
    theta = 0;  
  }
 
  // Function to draw the objects
  void display(color randomCol, boolean isEllipse) {
    stroke(0);
    fill(randomCol);
    if (isEllipse){
      ellipse(x, y, csize, csize);
    }
    else {
      rect(x, y, csize, csize);
    }
  }
  
  // Function to determine where an orbit is in its orbit
  void orbit(int counterClockwise) {
    theta = theta + counterClockwise * vr / radius;
    x = width / 2 - radius * sin(theta);
    y = height / 2 - radius * cos(theta);
  }
}