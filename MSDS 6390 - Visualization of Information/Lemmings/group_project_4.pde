// Brad Tweardy
// Dineen Parker
// Zach Brown
// MSDS 6390 - 404
// Project 4

PImage lemImg;
float birthRate = .03;
float lemmingCountCurrent = 0;
int lemmingCount = 50;
float[] x = new float[lemmingCount];
float[] y = new float[lemmingCount];
float[] lemHeight = new float[lemmingCount];
float[] lemWidth = new float[lemmingCount];
float[] speedX = new float[lemmingCount];
float[] speedY = new float[lemmingCount];
int[] direction = new int[lemmingCount];
int[] position = new int[lemmingCount];
int safe = 0;
int die = 0;

//In Processing 3.0 you have to use settings() to specify variables in size()
void settings() {
  lemImg = loadImage("lemmings.jpg");
  float w = lemImg.width;
  float h = lemImg.height;
  size (int(w), int(h));
}
void setup() {
  background(lemImg);
  for ( int i = 0; i < lemmingCount; i += 1) {
    lemHeight[i] = 25;
    lemWidth[i] = 25;
    x[i] = 372 + lemWidth[i] / 2;
    y[i] = 28;
    speedX[i] = 0;
    speedY[i] = 2;
    direction[i] = getDirection();
    position[i] = 1;
  }
}

// Drawing rect() for each one
void draw() {
  background(lemImg);

  //  fill(255, 0, 0);
  for ( int i = 0; i < lemmingCountCurrent; i += 1) {
    drawLemming(i, 15);
    x[i] += speedX[i];
    y[i] += speedY[i];

    checkCollisions(i);
    }

  //scoreboard
  fill(175);
  rect(68, 48, 110, 50);
  fill(255);
  textSize(17);
  text("Lives   " + safe, 75, 70);
  text("Dies   " + die, 75, 92);

  if (lemmingCountCurrent < lemmingCount - birthRate) {
    lemmingCountCurrent += birthRate;
  }

    // FYI...This allows us get the coordinates for specific points on our image after running the program.
    // Just run the program and scroll over the image to see the (x, y) at the bottom of this screen.
    // I used it for all of mine and it may help later.
    println(mouseX, mouseY);
  }