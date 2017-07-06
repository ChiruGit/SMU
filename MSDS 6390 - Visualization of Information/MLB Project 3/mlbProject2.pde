// Zach Brown
// MSDS 6390 - 404
// Project 9

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
Menu topMenu, bottomMenu, leagueMenu;
LeagueStandings leagueStandings;
DivStandings  alEastStandings, alCentralStandings, alWestStandings, nlEastStandings, nlCentralStandings, nlWestStandings;
TeamGroup allTeams;

String csvFile; 
int bgCol = #FFFFFF;
String stat, div;
boolean prediction;

void setup() {
  size(800, 600);
  background(bgCol);

  String[] topLabels = {"2015 Actuals", "2016 Projections"};
  String[] bottomLabels = {"Wins", "Losses", "Run Differential", "Win %", "Runs Scored", "Runs Against"};
  String[] leagueLabels = {"All Teams", "AL West", "AL Central", "AL East", "NL West", "NL Central", "NL East"};

  color[] states = {
    //offState, onState, overState, pressState
    #000088, #CC0000, bgCol, bgCol
  };

  stat = "";
  prediction = false;

  topMenu = new Menu(new Dimension(width, 23), topLabels, states, 0);
  bottomMenu = new Menu(new Dimension(width, 23), bottomLabels, states, 1);
  leagueMenu = new Menu(new Dimension(width, 23), leagueLabels, states, -1);

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
  leagueStandings = new LeagueStandings(grpList);
  alEastStandings = new DivStandings(alEast);
  alCentralStandings = new DivStandings(alCentral);
  alWestStandings = new DivStandings(alWest);
  nlEastStandings = new DivStandings(nlEast);
  nlCentralStandings = new DivStandings(nlCentral);
  nlWestStandings = new DivStandings(nlWest);
  allTeams = new TeamGroup(teams);
}

void draw() {
  background(bgCol);
  // Draw the menus
  topMenu.display();
  bottomMenu.display();
  leagueMenu.display();
  String topMenuSel = topMenu.getSelected();
  String botMenuSel = bottomMenu.getSelected();
  String leagueMenuSel = leagueMenu.getSelected();

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

  // Determine which button is selected on the league menu
  // Draw the layout and team standings
  switch (leagueMenuSel) {
  case "All Teams":  
    div = "all";
    leagueStandings.display(stat, prediction);
    break;
  case "AL East":  
    div = "alEast";
    alEastStandings.display(stat, prediction);
    break;
  case "AL Central":  
    div = "alCentral";
    alCentralStandings.display(stat, prediction);
    break;
  case "AL West":  
    div = "alWest";
    alWestStandings.display(stat, prediction);
    break;
  case "NL East":  
    div = "nlEast";
    nlEastStandings.display(stat, prediction);
    break;
  case "NL Central":  
    div = "nlCentral";
    nlCentralStandings.display(stat, prediction);
    break;
  case "NL West":  
    div = "nlWest";
    nlWestStandings.display(stat, prediction);
    break;
  default: 
    div = "";
    leagueStandings.display(stat, prediction);
    break;
  }
}