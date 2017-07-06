class TeamGroup {
  // Properties
  private Team[] teams;
  private Team[] wHistRank, lHistRank, wPercHistRank, rDifHistRank, rsPerGHistRank, raPerGHistRank;
  private Team[] wProjRank, lProjRank, wPercProjRank, rDifProjRank, rsPerGProjRank, raPerGProjRank;

  // Constructors
  TeamGroup() {
  }

  TeamGroup(Team[] teams) {
    this.teams = teams;
    wHistRank = this.teams;
    lHistRank = this.teams;
    wPercHistRank = this.teams;
    rDifHistRank = this.teams;
    rsPerGHistRank = this.teams;
    raPerGHistRank = this.teams;
    wProjRank = this.teams;
    lProjRank = this.teams;
    wPercProjRank = this.teams;
    rDifProjRank = this.teams;
    rsPerGProjRank = this.teams;
    raPerGProjRank = this.teams;
  }

  TeamGroup(Team[] teams, String div) {
    this.teams = new Team[5];
    int tmCount = 0;
    for (int i = 0; i < teams.length; i++) {
      if (teams[i].getDiv().equals(div)) {
        this.teams[tmCount] = teams[i];
        tmCount++;
      }
    }
    int len = this.teams.length;
    wHistRank = new Team[len];
    arrayCopy(this.teams, wHistRank);
    Arrays.sort(wHistRank, new WHistComparator());

    lHistRank = new Team[len];
    arrayCopy(this.teams, lHistRank);
    Arrays.sort(lHistRank, new LHistComparator());

    wPercHistRank = new Team[len];
    arrayCopy(this.teams, wPercHistRank);
    Arrays.sort(wPercHistRank, new WPercHistComparator());

    rDifHistRank = new Team[len];
    arrayCopy(this.teams, rDifHistRank);
    Arrays.sort(rDifHistRank, new RDifHistComparator());

    rsPerGHistRank = new Team[len];
    arrayCopy(this.teams, rsPerGHistRank);
    Arrays.sort(rsPerGHistRank, new RSPerGHistComparator());

    raPerGHistRank = new Team[len];
    arrayCopy(this.teams, raPerGHistRank);
    Arrays.sort(raPerGHistRank, new RAPerGHistComparator());

    wProjRank = new Team[len];
    arrayCopy(this.teams, wProjRank);
    Arrays.sort(wProjRank, new WProjComparator());

    lProjRank = new Team[len];
    arrayCopy(this.teams, lProjRank);
    Arrays.sort(lProjRank, new LProjComparator());

    wPercProjRank = new Team[len];
    arrayCopy(this.teams, wPercProjRank);
    Arrays.sort(wPercProjRank, new WPercProjComparator());

    rDifProjRank = new Team[len];
    arrayCopy(this.teams, rDifProjRank);
    Arrays.sort(rDifProjRank, new RDifProjComparator());

    rsPerGProjRank = new Team[len];
    arrayCopy(this.teams, rsPerGProjRank);
    Arrays.sort(rsPerGProjRank, new RSPerGProjComparator());

    raPerGProjRank = new Team[len];
    arrayCopy(this.teams, raPerGProjRank);
    Arrays.sort(raPerGProjRank, new RAPerGProjComparator());
  }

  // Methods
  Team[] getTeams() {
    return teams;
  }

  Team[] getTeams(String stat, boolean prediction) {
    Team[] tempTeams = new Team[teams.length];
    if (prediction) {
      switch (stat) {
      case "w":  
        tempTeams = wProjRank;
        break;
      case "l":  
        tempTeams = lProjRank;
        break;
      case "wPerc":  
        tempTeams = wPercProjRank;
        break;
      case "rDif":  
        tempTeams = rDifProjRank;
        break;
      case "rsPerG":  
        tempTeams = rsPerGProjRank;
        break;
      case "raPerG":  
        tempTeams = raPerGProjRank;
        break;
      default: 
        tempTeams = teams;
        break;
      }
    } else {
      switch (stat) {
      case "w":  
        tempTeams = wHistRank;
        break;
      case "l":  
        tempTeams = lHistRank;
        break;
      case "wPerc":  
        tempTeams = wPercHistRank;
        break;
      case "rDif":  
        tempTeams = rDifHistRank;
        break;
      case "rsPerG":  
        tempTeams = rsPerGHistRank;
        break;
      case "raPerG":  
        tempTeams = raPerGHistRank;
        break;
      default: 
        tempTeams = teams;
        break;
      }
    }
    return tempTeams;
  }
}