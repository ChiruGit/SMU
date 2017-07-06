//Lemming wallking are four different frames to the right
//right Lemming 2
void right2() {
  PShape rLem2;
  PShape rLemBod2;  
  PShape rLemRl2;
  PShape rLemLl2;
  PShape rLemFaceA2;
  PShape rLemHair2;
  
  rLem2=createShape(GROUP);
  
  //right Lemmings Body 2
  rLemBod2 = createShape();
  rLemBod2.beginShape();
  rLemBod2.fill(0, 125, 0);
  rLemBod2.noStroke();
  rLemBod2.vertex(140, 50);
  rLemBod2.vertex(150, 50);
  rLemBod2.vertex(150, 70);
  rLemBod2.vertex(160, 70);
  rLemBod2.vertex(160, 90);
  rLemBod2.vertex(120, 90);
  rLemBod2.vertex(120, 80);
  rLemBod2.vertex(130, 80);
  rLemBod2.vertex(130, 60);
  rLemBod2.vertex(140, 60);
  rLemBod2.vertex(140, 50);
  rLemBod2.endShape(CLOSE);
  
  //right Lemmings right leg 2  
  rLemRl2 = createShape();
  rLemRl2.beginShape();
  rLemRl2.fill(255);
  rLemRl2.noStroke();
  rLemRl2.vertex(150, 90);
  rLemRl2.vertex(170, 90);
  rLemRl2.vertex(170, 100);
  rLemRl2.vertex(150, 100);
  rLemRl2.vertex(150, 90);
  rLemRl2.endShape(CLOSE);
  
  //right Lemmings right leg 2
  rLemLl2 = createShape();
  rLemLl2.beginShape();
  rLemLl2.fill(255);
  rLemLl2.noStroke();
  rLemLl2.vertex(110, 90);
  rLemLl2.vertex(130, 90);
  rLemLl2.vertex(130, 100);
  rLemLl2.vertex(110, 100);
  rLemLl2.vertex(110, 90);
  rLemLl2.endShape(CLOSE);
  
  //right Lemmings face and arm 2
  rLemFaceA2 = createShape();
  rLemFaceA2.beginShape();
  rLemFaceA2.fill(255);
  rLemFaceA2.noStroke();
  rLemFaceA2.vertex(140, 30);
  rLemFaceA2.vertex(150, 30);
  rLemFaceA2.vertex(150, 40);
  rLemFaceA2.vertex(160, 40);
  rLemFaceA2.vertex(160, 50);
  rLemFaceA2.vertex(140, 50);
  rLemFaceA2.vertex(140, 60);
  rLemFaceA2.vertex(130, 60);
  rLemFaceA2.vertex(130, 80);
  rLemFaceA2.vertex(110, 80);
  rLemFaceA2.vertex(110, 70);
  rLemFaceA2.vertex(120, 70);
  rLemFaceA2.vertex(120, 50);
  rLemFaceA2.vertex(130, 50);
  rLemFaceA2.vertex(130, 40);
  rLemFaceA2.vertex(140, 40);
  rLemFaceA2.vertex(140, 30);
  rLemFaceA2.endShape(CLOSE);
  
  //right Lemmings hair 2
  rLemHair2 = createShape();
  rLemHair2.beginShape();
  rLemHair2.fill(90, 20, 180);
  rLemHair2.noStroke();
  rLemHair2.vertex(120, 10);
  rLemHair2.vertex(130, 10);
  rLemHair2.vertex(130, 20);
  rLemHair2.vertex(140, 20);
  rLemHair2.vertex(140, 10);
  rLemHair2.vertex(150, 10);
  rLemHair2.vertex(150, 30);
  rLemHair2.vertex(140, 30);
  rLemHair2.vertex(140, 40);
  rLemHair2.vertex(130, 40);
  rLemHair2.vertex(130, 30);
  rLemHair2.vertex(120, 30);
  rLemHair2.vertex(120, 10);
  rLemHair2.endShape(CLOSE);
  
  rLem2.addChild(rLemBod2);
  rLem2.addChild(rLemRl2);
  rLem2.addChild(rLemLl2);
  rLem2.addChild(rLemFaceA2);
  rLem2.addChild(rLemHair2);
  
  shape(rLem2);
}