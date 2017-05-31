class Team {
  // Properties
  String name;
  int points;

  // Constructors
  Team() {
  }

  Team(String name, int points) {
    this.name = name;
    this.points = points;
  }

  // Methods
  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  int getPoints() {
    return points;
  }
}