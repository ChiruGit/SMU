void checkCollisions(int i){
  // Top Platform
  if (y[i] > 92 - lemHeight[i] && y[i] < 92 + lemHeight[i]){
    if (x[i] > 320 && x[i] < 747) {
      y[i] = 92;
      speedX[i] = 2 * direction[i];
      if (speedY[i] != 0) {
        speedY[i] = 0;
        direction[i] = getDirection();
      }
    } else {
      speedY[i] = 2;
    }
  }
  
  // Second platform down
  if (y[i] > 140 - lemHeight[i] && y[i] < 140 + lemHeight[i]){
    if (x[i] > 147 && x[i] < 419) {
      y[i] = 140;
      speedX[i] = 2 * direction[i];
      if (speedY[i] != 0) {
        speedY[i] = 0;
        direction[i] = getDirection();
      }
    } else {
      speedY[i] = 2;
    }
  }
  
  // Middle platforms
  if (y[i] > 188 - lemHeight[i] && y[i] < 188 + lemHeight[i]){
    if ((x[i] > 77 && x[i] < 230) || (x[i] > 341 && x[i] < 648)) {
      y[i] = 188;
      speedX[i] = 2 * direction[i];
      if (speedY[i] != 0) {
        speedY[i] = 0;
        direction[i] = getDirection();
      }
    } else {
      speedY[i] = 2;
    }
  }
  
  // Fourth platform down
  if (y[i] > 235 - lemHeight[i] && y[i] < 235 +lemHeight[i]){
   if (x[i] > 173 && x[i] < 471) {
     y[i] = 235;
     speedX[i] = 2 * direction[i];
     if (speedY[i] != 0) {
       speedY[i] = 0;
       direction[i] = getDirection();
    }
  } else {
     speedY[i] = 2;
    }
  }
  
  // Fifth platform down
  if (y[i] > 283 - lemHeight[i] && y[i] < 283 + lemHeight[i]){
   if (x[i] > 118 && x[i] < 425) {
     y[i] = 283;
     speedX[i] = 2 * direction[i];
     if (speedY[i] != 0) {
       speedY[i] = 0;
       direction[i] = getDirection();
      }
    } else {
     speedY[i] = 2;
    }
  }
  
  // Floor
  if (y[i] > 369 - lemHeight[i] && y[i] < 369 + lemHeight[i]){
    if ((x[i] > 215 && x[i] < 624) || (x[i] > 698 && x[i] < 795 - lemWidth[i])) {
      y[i] = 369;
      speedX[i] = 2 * direction[i];
      // If lemming reaches door, disappear and increase safe counter
      if (speedY[i] != 0) {
        speedY[i] = 0;
        direction[i] = getDirection();
      } else if (x[i] > 327 && x[i] < 347){
        x[i] = width - 100;
        y[i] = -100;
        speedY[i] = 0;
        speedX[i] = 0;
        safe++;
      }
    } else if (x[i] <= 698) {
      speedY[i] = 2;
    }
  } else if (y[i] > 380) {
      x[i] = width - 100;
      y[i] = -100;
      speedY[i] = 0;
      speedX[i] = 0;
      die++;
    }
  
  // Right wall
  if (x[i] > 795) {
    x[i] = 795;
    speedX[i] *= -1;
    direction[i] = -1;
  }
  
  // Left wall
  if ( x[i] < 51 + lemWidth[i] / 2) {
    x[i] = 51 + lemWidth[i] / 2;
    speedX[i] *= -1;
  }
}