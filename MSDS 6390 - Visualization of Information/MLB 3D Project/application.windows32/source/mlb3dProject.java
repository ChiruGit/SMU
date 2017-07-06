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

public class mlb3dProject extends PApplet {

Engine engine;

public void setup() {
  
  engine = new Engine("mlbstats.csv");
}

public void draw() {
  engine.init();
}
public class Engine {
  // Properties
  TeamLoader tl;
  Team[] teams;
  Graph graph;

  // Constructors
  Engine() {
  }

  Engine (String csvFile) {
    tl = new TeamLoader(csvFile);
    teams = tl.getTeams();
  }

  // Methods
  public void init() {
    graph = new Graph(teams);
    graph.display();
  }
}
public class Graph {
  // Properties
  Team[] teams;
  int yMin, yMax, xMin, xMax, zMin, zMax;

  // Constructors
  Graph() {
  }

  Graph(Team[] teams) {
    this.teams = teams;
    xMin = 999999;
    yMin = 999999;
    zMin = 999999;
    yMax = 0;
    xMax = 0;
    zMax = 0;
    this.getBoundaries();
  }

  private void getBoundaries() {
    int curRS, curRA, curWin;

    for (int i = 0; i < teams.length; i++) {
      curRS = PApplet.parseInt(round(teams[i].getRS()));
      curRA = PApplet.parseInt(round(teams[i].getRA()));
      curWin = teams[i].getW();
      if (curRS < yMin) {
        yMin = curRS / 100 * 100;
      }
      if (curRS > yMax) {
        yMax = (curRS + 99) / 100 * 100;
      }
      if (curRA < xMin) {
        xMin = curRA / 100 * 100;
      }
      if (curRA > xMax) {
        xMax = (curRA + 99) / 100 * 100;
      }
      if (curWin < zMin) {
        zMin = curWin / 100 * 100;
      }
      if (curWin > zMax) {
        zMax = (curWin + 99) / 100 * 100;
      }
    }
  }

  private float[] getCoords(Team team) {
    float x = team.getRA();
    float y = team.getRS();
    float z = team.getW();
    
    int xDist = xMax - xMin;
    int yDist = yMax - yMin;
    int zDist = zMax - zMin;
    
    x = (x - xMin) / xDist * width;
    y = (yMax - y) / yDist * height;
    z = -(zMax - z) / zDist * width;
    
    float[] coords = {x, y, z};
    return coords;
  }

  public void display() {
    background(255);

    pushMatrix();
    stroke(0);
    noFill();
    translate(width/2, height/2, -width/2);
    lights();
    box(width, height, width);
    popMatrix();

    fill(255, 0, 0, 200);
    noStroke();
    for (int i = 0; i < teams.length; i++) {
      float[] coords = getCoords(teams[i]);
      pushMatrix();
      translate(coords[0], coords[1], coords[2]);
      sphere(25);
      popMatrix();
    }
  }
}
public class Team {
  // Properties
  private String name;
  private int gHist, wHist, lHist, rDifHist;
  private float wPercHist, rsPerGHist, raPerGHist;
  private int wProj, lProj, rDifProj;
  private float wPercProj, rsPerGProj, raPerGProj;
  private String div;

  // Constructors
  Team() {
  }

  Team(String name, 
    int gHist, int wHist, int lHist, int rDifHist, 
    float wPercHist, float rsPerGHist, float raPerGHist, 
    int wProj, int lProj, int rDifProj, 
    float wPercProj, float rsPerGProj, float raPerGProj, 
    String div) {
    this.name = name;
    this.gHist = gHist;
    this.wHist = wHist;
    this.lHist = lHist;
    this.rDifHist = rDifHist;
    this.wPercHist = wPercHist;
    this.rsPerGHist = rsPerGHist;
    this.raPerGHist = raPerGHist;
    this.wProj = wProj;
    this.lProj = lProj;
    this.rDifProj = rDifProj;
    this.wPercProj = wPercProj;
    this.rsPerGProj = rsPerGProj;
    this.raPerGProj = raPerGProj;
    this.div = div;
  }

  // Methods
  public String getName() {
    return name;
  }

  public int getG() {
    return gHist;
  }

  public int getW() {
    return wHist;
  }

  public int getL() {
    return lHist;
  }

  public int getRDif() {
    return rDifHist;
  }

  public float getWPerc() {
    return wPercHist;
  }

  public float getRS() {
    return rsPerGHist * gHist;
  }

  public float getRA() {
    return raPerGHist * gHist;
  }

  public String getDiv() {
    return div;
  }
}
class TeamLoader {
  // Properties
  private Team[] teams;
  private String fileName;
  private boolean header = true;

  // Constructors
  TeamLoader() {
  }

  TeamLoader(String fileName) {
    this.fileName = fileName;
    loadTeams(header);
  }

  TeamLoader(String fileName, boolean header) {
    this.fileName = fileName;
    this.header = header;
    loadTeams(header);
  }  

  // Methods
  public Team[] getTeams() {
    return teams;
  }

  private void loadTeams(boolean header) {
    Table table;

    if (header) {
      table = loadTable(fileName, "header");
    } else {
      table = loadTable(fileName);
    }

    int rowCount = table.getRowCount();
    teams = new Team[rowCount];

    for (int i = 0; i < rowCount; i++) {
      TableRow row = table.getRow(i);
      teams[i] = new Team(row.getString("name"), 
        row.getInt("g2015"), row.getInt("w2015"), row.getInt("l2015"), row.getInt("rDif2015"), 
        row.getFloat("wPerc2015"), row.getFloat("rsPerG2015"), row.getFloat("raPerG2015"), 
        row.getInt("w2016"), row.getInt("l2016"), row.getInt("rDif2016"), 
        row.getFloat("wPerc2016"), row.getFloat("rsPerG2016"), row.getFloat("raPerG2016"), 
        row.getString("div"));
    }
  }
}
  public void settings() {  size(600, 600, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "mlb3dProject" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
