class DivStandings extends Standings {

  // Properties
  TeamGroup group;
  Team[] teams;

  DivStandings() {
    super();
  }

  DivStandings(TeamGroup group) {
    super();
    this.group = group;
    teams = this.group.getTeams();
    alLogo = loadImage("al.png");
    nlLogo = loadImage("nl.png");
  }

  // Methods

  void display(String stat, boolean prediction) {
    stroke(0);
    strokeWeight(3);
    line(100, 94, 100, 529);
    line(48, 500, 752, 500);
    for (int i=0; i < teams.length; i++)
    {
      Team team = new Team();
      team = teams[i];
      int statVal = team.getStat(stat, prediction);
      int x = i * 125 + 125;
      int y = statVal + 100;
      image(team.getLogo(), x, y);
      noStroke();
      fill(#CC0000);
      rect(x, y + 76, 79, 500 - y - 76);
    }
    //}
  }
}