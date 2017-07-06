// Zach Brown
// MSDS 6390 - 404
// Project 8

import java.util.Comparator;
import java.util.List;
import java.util.Arrays;

TeamLoader tl;
Team[] teams;
TeamGroup alEast;
TeamGroup alCentral;
TeamGroup alWest;
TeamGroup nlEast;
TeamGroup nlCentral;
TeamGroup nlWest;
TeamGroup[] grpList;
Menu topMenu, bottomMenu;
Standings standings;

TeamGroup allTeams;

String csvFile; 
int bgCol = #FFFFFF;
String stat;
boolean prediction;

void setup() {
  size(800, 600);
  background(bgCol);

  String[] topLabels = {"2015 Actuals", "2016 Projections"};
  String[] bottomLabels = {"Wins", "Losses", "Run Differential", "Win %", "Runs Scored", "Runs Against"};

  color[] states = {
    //offState, onState, overState, pressState
    #000088, #CC0000, bgCol, bgCol
  };

  stat = "";
  prediction = false;

  topMenu = new Menu(new Dimension(width, 23), topLabels, states, 0);
  bottomMenu = new Menu(new Dimension(width, 23), bottomLabels, states, 1);

  // Read in stats from csv and determine divisions
  csvFile = "mlbstats.csv";
  tl = new TeamLoader(csvFile);
  teams = tl.getTeams();
  alEast = new TeamGroup(teams, "AL East");
  alCentral = new TeamGroup(teams, "AL Central");
  alWest = new TeamGroup(teams, "AL West");
  nlEast = new TeamGroup(teams, "NL East");
  nlCentral = new TeamGroup(teams, "NL Central");
  nlWest = new TeamGroup(teams, "NL West");
  grpList = new TeamGroup[]{alWest, alCentral, alEast, nlWest, nlCentral, nlEast};
  standings = new Standings(grpList);
  allTeams = new TeamGroup(teams);
}

void draw() {
  // Draw the menus
  topMenu.display();
  bottomMenu.display();
  String topMenuSel = topMenu.getSelected();
  String botMenuSel = bottomMenu.getSelected();

  // Determine which button is selected on the top menu
  if (topMenuSel == "2016 Projections") {
    prediction = true;
  } else {
    prediction = false;
  }

  // Determine which button is selected on the bottom menu
  switch (botMenuSel) {
  case "Wins":  
    stat = "w";
    break;
  case "Losses":  
    stat = "l";
    break;
  case "Win %":  
    stat = "wPerc";
    break;
  case "Run Differential":  
    stat = "rDif";
    break;
  case "Runs Scored":  
    stat = "rsPerG";
    break;
  case "Runs Against":  
    stat = "raPerG";
    break;
  default: 
    stat = "";
    break;
  }

  // Draw the layout and team standings
  standings.display(stat, prediction);
}