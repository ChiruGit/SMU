class Puck {
  // Properties
  int puckWidth;
  String team;
  String points;
  
  // Constructors
  Puck() {
    this.puckWidth = 100;
    this.team = "";
    this.points = "";
  }
  
  Puck(String team, int points) {
    this.puckWidth = points;
    this.team = team;
    this.points = str(points) + " Pts";
  }
  
  // Methods  
  void setTeam(String team){
    this.team = team;
  }
  
  void setPoints(int points){
    this.points = str(points) + " Pts";
    this.puckWidth = points;
  }
  
  void draw(){
    // Draw puck
    stroke(0);
    fill(40);
    lights();
    for (int i=0; i<51; i++){
      pushMatrix();
        translate(width/2, (height/2)+i, 0);
        rotateX(radians(60));
        ellipse(0,0,puckWidth*2.5,puckWidth*2.5);
      popMatrix();
    }
    
    // Print team name
    pushMatrix();
      translate(width/2, height/2 - 16, 15);
      rotateX(radians(60));
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text(this.team, 0, 0, 0);
    popMatrix();
    
    // Print team point total
    pushMatrix();
      translate(width/2, height/2 + 5, 15);
      rotateX(radians(60));
      fill(255);
      textSize(32);
      textAlign(CENTER);
      text(this.points, 0, 0, 0);
    popMatrix();
  }
}