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
    // Calculate min and max values for all 3 axes
    // Round min down and max up to the nearest 100
    int curRS, curRA, curWin;

    for (int i = 0; i < teams.length; i++) {
      curRS = int(round(teams[i].getRS()));
      curRA = int(round(teams[i].getRA()));
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
    // Determine x, y and z coordinates for each team
    
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
    // Draw graph
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