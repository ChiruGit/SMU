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
  String getName() {
    return name;
  }

  int getG() {
    return gHist;
  }

  int getW() {
    return wHist;
  }

  int getL() {
    return lHist;
  }

  int getRDif() {
    return rDifHist;
  }

  float getWPerc() {
    return wPercHist;
  }

  float getRS() {
    return rsPerGHist * gHist;
  }

  float getRA() {
    return raPerGHist * gHist;
  }

  String getDiv() {
    return div;
  }
}