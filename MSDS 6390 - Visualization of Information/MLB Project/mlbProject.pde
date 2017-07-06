//Brad Tweardy
//Dineen Parker
//Zach Brown
//MSDS 6390-404
//Assignment 5
//February 24, 2016

// This program loads an image of all 30 Major League Baseball team logos
// and converts a portion of each of them to grayscale
// that corresponds with their winning percentage for the 2015 season

PImage mlb;

//load image of team logos and set screen height and width to same dimensions
void settings() {
  mlb = loadImage("mlbLogos.png");
  float w = mlb.width;
  float h = mlb.height;
  size(int(w), int(h));
}

void setup() {
  //mlb image is the background
  background(mlb);

  int teamWidth = mlb.width/6+1; //set width of each logo
  int teamHeight = mlb.height/5; //set height of each logo
  int [] teamY = {0, teamHeight, teamHeight*2, teamHeight*3, teamHeight*4}; //y coordinates for each row
  int [] teamX = {0, teamWidth, teamWidth*2, teamWidth*3, teamWidth*4, teamWidth*5}; //x coordinates for each column
  float [] teamRecord = importData("MLBWinningPercentages.csv");  //winning percentages for each team

//loop to loop through each team
  for (int i=0; i<teamX.length; i++) {
    for (int j=0; j<teamY.length; j++) {
      // Determine the current team number
      int k = i * 5 + j;
      
      // Run the teamGray function on the current team
      teamGray(teamX[i], teamY[j], teamWidth, teamHeight, teamRecord[k]);
    }
  }
}