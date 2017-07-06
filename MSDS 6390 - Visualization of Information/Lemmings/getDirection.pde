// Function to randomly generate a 1 or -1 in order to determine x direction
int getDirection(){
  if (random(1) < .5) {
    return -1;
  } 
  else {
    return 1;
  }
}