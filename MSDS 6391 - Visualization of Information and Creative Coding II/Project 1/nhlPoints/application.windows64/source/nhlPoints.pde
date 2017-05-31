// Zach Brown
// MSDS 6391 - Visualization of Information and Creative Coding II
// Project 1
// 5-16-2017

Puck p;
TeamLoader tl;
Team[] teams;
Menu menu;
String[] labels;
int bgCol = 255;
int teamNum;

void setup() {
  size(900, 900, P3D);
  background(bgCol);
  p = new Puck();
  tl = new TeamLoader("nhlPoints.csv");
  teams = tl.getTeams();

  color[] states = {
    //offState, onState, overState, pressState
    #000088, #CC0000, bgCol, bgCol
  };

  labels = new String[30];
  for (int i=0; i<30; i++) {
    labels[i] = teams[i].getName();
  }
  menu = new Menu(new Dimension(width, 23), labels, states, 0);
}

void draw() {
  background(bgCol);
  
  int teamNum = menu.getNumSelected();
  p.setTeam(teams[teamNum].getName());
  p.setPoints(teams[teamNum].getPoints());
  p.draw();
  
  menu.display();
}