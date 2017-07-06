// Function to change pixels for an individual team to grayscale

void teamGray(int x, int y, int teamWidth, int teamHeight, float teamRecord){
  loadPixels();
  for (int i=y; i<y + teamHeight * (1-teamRecord); i++) {  
    for (int j=x; j<x + teamWidth; j++) {      
      int k = i * width + j;      
      float red = red(pixels[k]);
      float green = green(pixels[k]);
      float blue = blue(pixels[k]);
      float gray = (red + green + blue) / 3;
      pixels[k] = color(gray);
    }
  }
  updatePixels();
}