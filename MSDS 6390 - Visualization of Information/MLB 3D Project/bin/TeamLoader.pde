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
  Team[] getTeams() {
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