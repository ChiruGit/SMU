void drawGraph(){
  // Display Twitter logo and hashtag
  image(logo, 0, 0, 85, 85);
  textSize(30);
  fill(85, 172, 238);
  text(hashtag, 85, 50);
  
  // Display graph box
  noFill();
  stroke(204, 214, 221);
  strokeWeight(1);
  rect(xSeg, height - ySeg - 200, xSeg * 9, 200);
  stroke(50);
  line(xSeg, height - ySeg - 150, xSeg + (xSeg * 9), height - ySeg - 150);
  line(xSeg, height - ySeg - 100, xSeg + (xSeg * 9), height - ySeg - 100);
  line(xSeg, height - ySeg - 50, xSeg + (xSeg * 9), height - ySeg - 50);

  // Display graph labels
  textSize(10);
  fill(204, 214, 221);
  text("100", xSeg - 20, height - ySeg - 200);
  text("50", xSeg - 15, height - ySeg - 100);
  text("0", xSeg - 8, height - ySeg);
  for(int i = 1; i <= 10; i++){
    text(str(11 - i), xSeg * i, height - ySeg + 12);
  }
  text("Seconds Ago", xSeg * 5, height - ySeg + 25);
  pushMatrix();
    translate(xSeg - 22, height - ySeg - 65);
    rotate(PI * 1.5);
    text("New Tweets", 0, 0);
  popMatrix();
}