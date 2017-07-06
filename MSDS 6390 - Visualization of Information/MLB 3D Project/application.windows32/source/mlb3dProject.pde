Engine engine;

public void setup() {
  size(600, 600, P3D);
  engine = new Engine("mlbstats.csv");
}

public void draw() {
  engine.init();
}