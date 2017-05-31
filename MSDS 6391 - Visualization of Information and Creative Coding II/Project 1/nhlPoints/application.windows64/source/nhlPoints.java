import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class nhlPoints extends PApplet {

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

public void setup() {
  
  background(bgCol);
  p = new Puck();
  tl = new TeamLoader("nhlPoints.csv");
  teams = tl.getTeams();

  int[] states = {
    //offState, onState, overState, pressState
    0xff000088, 0xffCC0000, bgCol, bgCol
  };

  labels = new String[30];
  for (int i=0; i<30; i++) {
    labels[i] = teams[i].getName();
  }
  menu = new Menu(new Dimension(width, 23), labels, states, 0);
}

public void draw() {
  background(bgCol);
  
  int teamNum = menu.getNumSelected();
  p.setTeam(teams[teamNum].getName());
  p.setPoints(teams[teamNum].getPoints());
  p.draw();
  
  menu.display();
}

class Button {
  // Properties
  PVector position;
  Dimension dimension;
  String label;
  int labelCol, labelTextCol;
  int offState, onState, overState, pressState;
  int[] states = {
    offState, onState, overState, pressState
  };
  boolean hasBorder = true;
  boolean isSelected = false;
  int mouseClickCount=0;

  // Constructors
  Button() {
  }

  Button(PVector position, Dimension dimension, 
    String label, int[] states) {
    this.position = position;
    this.dimension = dimension;
    this.label = label;
    labelCol = states[0];
    labelTextCol = 0xffffffff;
    offState = states[0];
    onState = states[1];
    overState = states[2];
    pressState = states[3];
    this.states = states;
  }
  
  // Methods
  public boolean isHit() {
    if (mouseX >= position.x && mouseX <= position.x + dimension.w &&
      mouseY >= position.y && mouseY <= position.y + dimension.h) {
      return true;
    }
    return false;
  }

  public void display() {
    if (hasBorder) {
      stroke(100);
    } else {
      noStroke();
    }
    fill(labelCol);
    rect(position.x, position.y, dimension.w, dimension.h);

    fill(labelTextCol);
    float tw = textWidth(label);
    textSize(11);
    textAlign(LEFT,CENTER);
    text(label, position.x +(dimension.w-tw)/2.0f, position.y + dimension.h/2);
  }
}
class Dimension {
  // Properties
  float w, h, d;
  
  // Constructors
  Dimension() {
  }

  Dimension(float w, float h) {
    this.w = w;
    this.h = h;
    d = 0;
  }
}
class Menu {

  String[] labels;
  int[] states;
  Dimension dimension;
  Button[] buttons;
  int layer;

  Menu() {
  }

  Menu(Dimension dimension, String[] labels, int[] states, int layer) {
    this.dimension = dimension;
    this.labels = labels;
    this.states = states;
    this.layer = layer;
    buttons = new Button[labels.length];

    generate();
  }

  public void generate() {

    float btnW, btnH;
    btnW = dimension.w/buttons.length;
    btnH = dimension.h;

    for (int i=0; i<buttons.length; i++) {
      PVector pos;
      Dimension dim;
      if (layer < 0) {
        pos = new PVector(btnW * i, height + layer * btnH);
      } else {
        pos = new PVector(btnW * i, layer * btnH);
      }
      dim = new Dimension(btnW, btnH);
      buttons[i] = new Button(pos, dim, labels[i], states);
    }
  }

  public void display() {
    for (int i=0; i<buttons.length; i++) {
      buttons[i].display();
    }

    createMenuEvents();
  }

  public void createMenuEvents() {
    for (int i=0; i<buttons.length; i++) {
      // pressed
      if (buttons[i].isHit() && mousePressed) {
        select(i);
        buttons[i].labelCol = states[3];
        // mouse over
      } else if (buttons[i].isHit() && !buttons[i].isSelected) {
        buttons[i].labelCol = states[2];
        buttons[i].labelTextCol = 0xff000000;
        // selected
      } else if (buttons[i].isSelected) {
        buttons[i].labelCol = states[1];
        buttons[i].labelTextCol = 0xff000000;
        // default
      } else {
        buttons[i].labelCol = states[0];
        buttons[i].labelTextCol = 0xffffffff;
      }
    }
  }
  public void select(int isSelectedID) {
    for (int i=0; i<buttons.length; i++) {
      if (i==isSelectedID) {
        buttons[i].isSelected = true;
      } else {
        buttons[i].isSelected = false;
      }
    }
  }

  public String getSelected() {
    for (int i=0; i<buttons.length; i++) {
      if (buttons[i].isSelected) {
        return buttons[i].label;
      }
    }
    return "";
  }

  public int getNumSelected() {
    for (int i=0; i<buttons.length; i++) {
      if (buttons[i].isSelected) {
        return i;
      }
    }
    return 0;
  }
}
class Puck {
  // Properties
  int puckWidth;
  String team;
  String points;
  
  // Constructors
  Puck() {
    this.puckWidth = 100;
    this.team = "";
    this.points = "";
  }
  
  Puck(String team, int points) {
    this.puckWidth = points;
    this.team = team;
    this.points = str(points) + " Pts";
  }
  
  // Methods  
  public void setTeam(String team){
    this.team = team;
  }
  
  public void setPoints(int points){
    this.points = str(points) + " Pts";
    this.puckWidth = points;
  }
  
  public void draw(){
    // Draw puck
    stroke(0);
    fill(40);
    lights();
    for (int i=0; i<51; i++){
      pushMatrix();
        translate(width/2, (height/2)+i, 0);
        rotateX(radians(60));
        ellipse(0,0,puckWidth*2.5f,puckWidth*2.5f);
      popMatrix();
    }
    
    // Print team name
    pushMatrix();
      translate(width/2, height/2 - 16, 15);
      rotateX(radians(60));
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text(this.team, 0, 0, 0);
    popMatrix();
    
    // Print team point total
    pushMatrix();
      translate(width/2, height/2 + 5, 15);
      rotateX(radians(60));
      fill(255);
      textSize(32);
      textAlign(CENTER);
      text(this.points, 0, 0, 0);
    popMatrix();
  }
}
class Team {
  // Properties
  String name;
  int points;

  // Constructors
  Team() {
  }

  Team(String name, int points) {
    this.name = name;
    this.points = points;
  }

  // Methods
  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return name;
  }

  public int getPoints() {
    return points;
  }
}

class TeamLoader {
  // Properties
  Team[] teams;
  String filename;

  // Constructors
  TeamLoader() {
  }

  TeamLoader(String filename) {
    this.filename = filename;
    loadTeams();
  }

  // Methods
  public Team[] getTeams() {
    return teams;
  }

  public void loadTeams() {
    Table table = loadTable(filename, "header");

    int rowCount = table.getRowCount();
    teams = new Team[rowCount];

    for (int i=0; i<rowCount; i++) {
      TableRow row = table.getRow(i);
      teams[i] = new Team(row.getString("Team"), row.getInt("PTS"));
    }
  }
}

  public void settings() {  size(900, 900, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "nhlPoints" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
