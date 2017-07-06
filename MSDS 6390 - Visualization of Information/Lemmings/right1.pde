//Lemming wallking are four different frames to the right
//right Lemming 1
void right1() {
  PShape rLem1;
  PShape rLemBod1;  
  PShape rLemRl1;
  PShape rLemRk1;
  PShape rLemLl1;
  PShape rLemLa1;
  PShape rLemFace1;
  PShape rLemHair1;
  PShape rLemHF1;
  
  rLem1=createShape(GROUP);
  
  //right Lemmings Body 1
  rLemBod1 = createShape();
  rLemBod1.beginShape();
  rLemBod1.fill(0, 125, 0);
  rLemBod1.noStroke();
  rLemBod1.vertex(210, 40);
  rLemBod1.vertex(210, 80);
  rLemBod1.vertex(200, 80);
  rLemBod1.vertex(200, 90);
  rLemBod1.vertex(180, 90);
  rLemBod1.vertex(180, 80);
  rLemBod1.vertex(190, 80);
  rLemBod1.vertex(190, 50);
  rLemBod1.vertex(200, 50);
  rLemBod1.vertex(200, 40);
  rLemBod1.vertex(210, 40);
  rLemBod1.endShape(CLOSE);
  
  //right Lemmings right leg 1
  rLemRl1 = createShape();
  rLemRl1.beginShape();
  rLemRl1.fill(255);
  rLemRl1.noStroke();
  rLemRl1.vertex(220, 60);
  rLemRl1.vertex(230, 60);
  rLemRl1.vertex(230, 80);
  rLemRl1.vertex(220, 80);
  rLemRl1.vertex(220, 60);
  rLemRl1.endShape(CLOSE);
  
  //right Lemmings right knee 1
  rLemRk1 = createShape();
  rLemRk1.beginShape();
  rLemRk1.fill(255);
  rLemRk1.noStroke();
  rLemRk1.vertex(210, 80);
  rLemRk1.vertex(220, 80);
  rLemRk1.vertex(220, 90);
  rLemRk1.vertex(210, 90);
  rLemRk1.vertex(210, 80);
  rLemRk1.endShape(CLOSE); 
  
  //right Lemmings left leg 1
  rLemLl1 = createShape();
  rLemLl1.beginShape();
  rLemLl1.fill(255);
  rLemLl1.noStroke();
  rLemLl1.vertex(180, 90);
  rLemLl1.vertex(200, 90);
  rLemLl1.vertex(200, 100);
  rLemLl1.vertex(180, 100);
  rLemLl1.vertex(180, 90);
  rLemLl1.endShape(CLOSE);
  
  //right Lemmings left arm 1
  rLemLa1 = createShape();
  rLemLa1.beginShape();
  rLemLa1.fill(255);
  rLemLa1.noStroke();
  rLemLa1.vertex(180, 50);
  rLemLa1.vertex(190, 50);
  rLemLa1.vertex(190, 70);
  rLemLa1.vertex(180, 70);
  rLemLa1.vertex(180, 50);
  rLemLa1.endShape(CLOSE);
  
  //right Lemmings face 1
  rLemFace1 = createShape();
  rLemFace1.beginShape();
  rLemFace1.fill(255);
  rLemFace1.noStroke();
  rLemFace1.vertex(200, 20);
  rLemFace1.vertex(210, 20);
  rLemFace1.vertex(210, 30);
  rLemFace1.vertex(220, 30);
  rLemFace1.vertex(220, 40);
  rLemFace1.vertex(200, 40);
  rLemFace1.vertex(200, 50);
  rLemFace1.vertex(190, 50);
  rLemFace1.vertex(190, 30);
  rLemFace1.vertex(200, 30);
  rLemFace1.vertex(200, 20);
  rLemFace1.endShape(CLOSE);
  
  //right Lemmings hair 1
  rLemHair1 = createShape();
  rLemHair1.beginShape();
  rLemHair1.fill(90, 20, 180);
  rLemHair1.noStroke();
  rLemHair1.vertex(190, 0);
  rLemHair1.vertex(200, 0);
  rLemHair1.vertex(200, 10);
  rLemHair1.vertex(210, 10);
  rLemHair1.vertex(210, 20);
  rLemHair1.vertex(200, 20);
  rLemHair1.vertex(200, 30);
  rLemHair1.vertex(180, 30);
  rLemHair1.vertex(180, 10);
  rLemHair1.vertex(190, 10);
  rLemHair1.vertex(190, 0);
  rLemHair1.endShape(CLOSE);
  
  //right Lemmings hair forward piece 1
  rLemHF1 = createShape();
  rLemHF1.beginShape();
  rLemHF1.fill(90, 20, 180);
  rLemHF1.noStroke();
  rLemHF1.vertex(210, 0);
  rLemHF1.vertex(220, 0);
  rLemHF1.vertex(220, 10);
  rLemHF1.vertex(210, 10);
  rLemHF1.vertex(210, 0);
  rLemHF1.endShape(CLOSE); 
  
  rLem1.addChild(rLemBod1);
  rLem1.addChild(rLemRl1);
  rLem1.addChild(rLemRk1);
  rLem1.addChild(rLemLl1);
  rLem1.addChild(rLemLa1);
  rLem1.addChild(rLemFace1);
  rLem1.addChild(rLemHair1);
  rLem1.addChild(rLemHF1);
  
  shape(rLem1);
}