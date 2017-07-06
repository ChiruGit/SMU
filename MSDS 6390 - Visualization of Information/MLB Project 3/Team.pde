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

  int getStat(String stat, boolean prediction) {
    float statVal;
    if (prediction) {
      switch (stat) {
      case "w":  
        statVal = 400.0 - (getWProj() * 4.0);
        break;
      case "l":  
        statVal = 400.0 - (getLProj() * 4.0);
        break;
      case "wPerc":  
        statVal = (1 - getWPercProj()) * 400.0;
        break;
      case "rDif":
        statVal = 150 - getRDifProj() * .8;
        break;
      case "rsPerG":  
        statVal = (1 - getRSPerGProj() / 6) * 400;
        break;
      case "raPerG":  
        statVal = (1 - getRAPerGProj() / 6) * 400;
        break;
      default: 
        statVal = 400.0 - (getWProj() * 4.0);
        break;
      }
    } else {
      switch (stat) {
      case "w":  
        statVal = 400.0 - (getWHist() * 4.0);
        break;
      case "l":  
        statVal = 400.0 - (getLHist() * 4.0);
        break;
      case "wPerc":  
        statVal = (1 - getWPercHist()) * 400.0;
        break;
      case "rDif":  
        statVal = 150 - getRDifHist() * .8;
        break;
      case "rsPerG":  
        statVal = (1 - getRSPerGHist() / 6) * 400;
        break;
      case "raPerG":  
        statVal = (1 - getRAPerGHist() / 6) * 400;
        break;
      default: 
        statVal = 400.0 - (getWHist() * 4.0);
        break;
      }
    }
    return (int)statVal;
  }
}