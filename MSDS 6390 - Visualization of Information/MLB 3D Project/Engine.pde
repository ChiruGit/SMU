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