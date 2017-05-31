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
  Team[] getTeams() {
    return teams;
  }

  void loadTeams() {
    Table table = loadTable(filename, "header");

    int rowCount = table.getRowCount();
    teams = new Team[rowCount];

    for (int i=0; i<rowCount; i++) {
      TableRow row = table.getRow(i);
      teams[i] = new Team(row.getString("Team"), row.getInt("PTS"));
    }
  }
}