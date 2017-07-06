// Function to select which lemming to draw
void drawLemming(int i, int walkSpeed) {
  pushMatrix();
  translate(x[i] - lemWidth[i], y[i] - lemHeight[i]);
  scale(0.25);
  if (speedY[i] != 0) {
    floating();
    position[i] = 1;
  } else if (direction[i] == -1) {
    if (position[i] <= walkSpeed) {
      left1();
      position[i]++;
    } else if (position[i] <= 2 * walkSpeed) {
      left2();
      position[i]++;
    } else if (position[i] <= 3 * walkSpeed) {
      left3();
      position[i]++;
    } else {
      left4();
      if (position[i] == 4 * walkSpeed) {
        position[i] = 1;
      }
      else {
        position[i]++;
      }
    }
  } else {
    if (position[i] <= walkSpeed) {
      right1();
      position[i]++;
    } else if (position[i] <= 2 * walkSpeed) {
      right2();
      position[i]++;
    } else if (position[i] <= 3 * walkSpeed) {
      right3();
      position[i]++;
    } else {
      right4();
      if (position[i] == 4 * walkSpeed) {
        position[i] = 1;
      }
      else {
        position[i]++;
      }
    }    
  }
  popMatrix();
}