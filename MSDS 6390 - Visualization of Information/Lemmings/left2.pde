//Lemming wallking are four different frames to the left
//Left Lemming 2
void left2() {
  PShape lLem2;
  PShape lLemBod2;  
  PShape lLemRl2;
  PShape lLemLl2;
  PShape lLemFaceA2;
  PShape lLemHair2;
  
  lLem2=createShape(GROUP);
  
  //Left Lemmings Body 2
  lLemBod2 = createShape();
  lLemBod2.beginShape();
  lLemBod2.fill(0, 125, 0);
  lLemBod2.noStroke();
  lLemBod2.vertex(90, 50);
  lLemBod2.vertex(100, 50);
  lLemBod2.vertex(100, 60);
  lLemBod2.vertex(110, 60);
  lLemBod2.vertex(110, 80);
  lLemBod2.vertex(120, 80);
  lLemBod2.vertex(120, 90);
  lLemBod2.vertex(80, 90);
  lLemBod2.vertex(80, 70);
  lLemBod2.vertex(90, 70);
  lLemBod2.vertex(90, 50);
  lLemBod2.endShape(CLOSE);
  
  //Left Lemmings right leg 2  
  lLemRl2 = createShape();
  lLemRl2.beginShape();
  lLemRl2.fill(255);
  lLemRl2.noStroke();
  lLemRl2.vertex(110, 90);
  lLemRl2.vertex(130, 90);
  lLemRl2.vertex(130, 100);
  lLemRl2.vertex(110, 100);
  lLemRl2.vertex(110, 90);
  lLemRl2.endShape(CLOSE);
  
  //Left Lemmings left leg 2
  lLemLl2 = createShape();
  lLemLl2.beginShape();
  lLemLl2.fill(255);
  lLemLl2.noStroke();
  lLemLl2.vertex(70, 90);
  lLemLl2.vertex(90, 90);
  lLemLl2.vertex(90, 100);
  lLemLl2.vertex(70, 100);
  lLemLl2.vertex(70, 90);
  lLemLl2.endShape(CLOSE);
  
  //Left Lemmings face and arm 2
  lLemFaceA2 = createShape();
  lLemFaceA2.beginShape();
  lLemFaceA2.fill(255);
  lLemFaceA2.noStroke();
  lLemFaceA2.vertex(90, 30);
  lLemFaceA2.vertex(100, 30);
  lLemFaceA2.vertex(100, 40);
  lLemFaceA2.vertex(110, 40);
  lLemFaceA2.vertex(110, 50);
  lLemFaceA2.vertex(120, 50);
  lLemFaceA2.vertex(120, 70);
  lLemFaceA2.vertex(130, 70);
  lLemFaceA2.vertex(130, 80);
  lLemFaceA2.vertex(110, 80);
  lLemFaceA2.vertex(110, 60);
  lLemFaceA2.vertex(100, 60);
  lLemFaceA2.vertex(100, 50);
  lLemFaceA2.vertex(80, 50);
  lLemFaceA2.vertex(80, 40);
  lLemFaceA2.vertex(90, 40);
  lLemFaceA2.vertex(90, 30);
  lLemFaceA2.endShape(CLOSE);
  
  //Left Lemmings hair 2
  lLemHair2 = createShape();
  lLemHair2.beginShape();
  lLemHair2.fill(90, 20, 180);
  lLemHair2.noStroke();
  lLemHair2.vertex(90, 10);
  lLemHair2.vertex(100, 10);
  lLemHair2.vertex(100, 20);
  lLemHair2.vertex(110, 20);
  lLemHair2.vertex(110, 10);
  lLemHair2.vertex(120, 10);
  lLemHair2.vertex(120, 30);
  lLemHair2.vertex(110, 30);
  lLemHair2.vertex(110, 40);
  lLemHair2.vertex(100, 40);
  lLemHair2.vertex(100, 30);
  lLemHair2.vertex(90, 30);
  lLemHair2.vertex(90, 10);
  lLemHair2.endShape(CLOSE);
  
  lLem2.addChild(lLemBod2);
  lLem2.addChild(lLemRl2);
  lLem2.addChild(lLemLl2);
  lLem2.addChild(lLemFaceA2);
  lLem2.addChild(lLemHair2);
  
  shape(lLem2);
}