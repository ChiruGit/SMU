class LeagueStandings extends Standings {
  
  // Properties
  TeamGroup[] groups;

  LeagueStandings() {
    super();
  }

  LeagueStandings(TeamGroup[] groups) {
    super();
    this.groups = new TeamGroup[groups.length];
    arrayCopy(groups, this.groups);
    alLogo = loadImage("al.png");
    nlLogo = loadImage("nl.png");
  }


  // Methods

  void display(String stat, boolean prediction) {
    stroke(0);
    strokeWeight(3);
    line(width/2, 58, width/2, 565);
    line(48, 170, 752, 170);
    strokeWeight(1);
    line(150, 199, 150, 541);
    line(275, 199, 275, 541);
    line(525, 199, 525, 541);
    line(650, 199, 650, 541);
    image(alLogo, 162, 58, 100, 100);
    image(nlLogo, 537, 58, 100, 100);
    for (int i=0; i < groups.length; i++)
    {
      Team[] teams = groups[i].getTeams(stat, prediction);
      for (int j=0; j < teams.length; j++)
      {
        Team team = new Team();
        team = teams[j];
        int x = i * 125 + 48;
        int y = (j % 5) * 76 + 180;
        image(team.getLogo(), x, y);
      }
    }
  }
}