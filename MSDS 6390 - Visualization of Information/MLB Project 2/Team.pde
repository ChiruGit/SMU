class Team {
  // Properties
  private String name;
  private int gHist, wHist, lHist, rDifHist;
  private float wPercHist, rsPerGHist, raPerGHist;
  private int wProj, lProj, rDifProj;
  private float wPercProj, rsPerGProj, raPerGProj;
  private String div;
  private PImage logo;

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
    logo = loadImage(name + ".jpg");
  }

  // Methods
  String getName() {
    return name;
  }

  int getGHist() {
    return gHist;
  }

  int getWHist() {
    return wHist;
  }

  int getLHist() {
    return lHist;
  }

  int getRDifHist() {
    return rDifHist;
  }

  float getWPercHist() {
    return wPercHist;
  }

  float getRSPerGHist() {
    return rsPerGHist;
  }

  float getRAPerGHist() {
    return raPerGHist;
  }

  int getWProj() {
    return wProj;
  }

  int getLProj() {
    return lProj;
  }

  int getRDifProj() {
    return rDifProj;
  }

  float getWPercProj() {
    return wPercProj;
  }

  float getRSPerGProj() {
    return rsPerGProj;
  }

  float getRAPerGProj() {
    return raPerGProj;
  }

  String getDiv() {
    return div;
  }

  PImage getLogo() {
    return logo;
  }
}