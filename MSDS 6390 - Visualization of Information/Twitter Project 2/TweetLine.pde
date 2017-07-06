class TweetLine {
  
  // Fields
  color lineColor;
  String search;
  int curvePoints[];
  int xSeg;
  int ySeg;
  int count;
  int wait;
  int time;
  
  // Constructors
  TweetLine(){
    lineColor = color(85, 172, 238);
    curvePoints = new int[0];
    xSeg = width/11;
    ySeg = height/4;
    count = 0;
    wait = 1000;
    time = millis();
  }
  
  TweetLine(String search){
    lineColor = color(85, 172, 238);
    this.search = search;
    curvePoints = new int[0];
    xSeg = width/11;
    ySeg = height/4;
    count = 0;
    wait = 1000;
    time = millis();
  }

  TweetLine(String search, color lineColor){
    this.lineColor = lineColor;
    this.search = search;
    curvePoints = new int[0];
    xSeg = width/11;
    ySeg = height/4;
    count = 0;
    wait = 1000;
    time = millis();
  }
  
  // Setters and Getters
  void setSearch(String search){
    this.search = search;
  }
  
  String getSearch(){
    return search;
  }
  
  void setColor(color lineColor){
    this.lineColor = lineColor;
  }
  
  int[] getCurvePoints(){
    return curvePoints;
  }
  
  // Methods
  void updateCount(){
    count++;
  }
  
  void resetCount(){
    count = 0;
  }
  
  void resetTime(){
    time = millis();
  }
  
  void addPoint(){
    if(curvePoints.length == 10){
      for(int i = 0; i < curvePoints.length - 1; i++){
        curvePoints[i] = curvePoints[i + 1];
      }
      curvePoints[curvePoints.length - 1] = count;
    } else{
      curvePoints = append(curvePoints, count);
    }
    resetCount();
    resetTime();
  }
  
  void update(){
    if (millis() - time >= wait){
      this.addPoint();
    }
  }
  
  void display(){
    int len = curvePoints.length;
    if (len > 0){
      stroke(lineColor);
      strokeWeight(3);
      noFill();
      curveTightness(0.5);
  
      beginShape();
      curveVertex(xSeg, height - ySeg - (curvePoints[0] * 4));
      for (int i = 0; i < len; i++){
       curveVertex(xSeg * (i+1) + (xSeg * (10 - len)), height - ySeg - (curvePoints[i] * 4));
       ellipse(xSeg * (i+1) + (xSeg * (10 - len)), height - ySeg - (curvePoints[i] * 4), 3, 3);
      }
      curveVertex(xSeg * 10, height - ySeg - (curvePoints[len - 1] * 4));
      endShape();
    }
  }
}