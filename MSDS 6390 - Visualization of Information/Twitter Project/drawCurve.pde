void drawCurve(int[] curvePoints){
  int len = curvePoints.length;
  stroke(85, 172, 238);
  strokeWeight(3);
  noFill();
  
  beginShape();
  curveVertex(xSeg, height - ySeg - (curvePoints[0] * 2));
  for (int i = 0; i < len; i++){
    curveVertex(xSeg * (i+1) + (xSeg * (10 - len)), height - ySeg - (curvePoints[i] * 2));
    ellipse(xSeg * (i+1) + (xSeg * (10 - len)), height - ySeg - (curvePoints[i] * 2), 3, 3);
  }
  curveVertex(xSeg * 10, height - ySeg - (curvePoints[len - 1] * 2));
  endShape();
}