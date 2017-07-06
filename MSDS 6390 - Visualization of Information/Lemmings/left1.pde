//Lemming wallking are four different frames to the left
//Left Lemming 2
void left1() {
  PShape lLem1;
  PShape lLemBod1;  
  PShape lLemRl1;
  PShape lLemLk1;
  PShape lLemLl1;
  PShape lLemRa1;
  PShape lLemFace1;
  PShape lLemHair1;
  PShape lLemHF1;
  
  lLem1=createShape(GROUP);
  
  //Left Lemmings Body 1
  lLemBod1 = createShape();
  lLemBod1.beginShape();
  lLemBod1.fill(0, 125, 0);
  lLemBod1.noStroke();
  lLemBod1.vertex(30, 40);
  lLemBod1.vertex(40, 40);
  lLemBod1.vertex(40, 50);
  lLemBod1.vertex(50, 50);
  lLemBod1.vertex(50, 80);
  lLemBod1.vertex(60, 80);
  lLemBod1.vertex(60, 90);
  lLemBod1.vertex(40, 90);
  lLemBod1.vertex(40, 80);
  lLemBod1.vertex(30, 80);
  lLemBod1.vertex(30, 40);
  lLemBod1.endShape(CLOSE);
  
  //Left Lemmings right leg 1
  lLemRl1 = createShape();
  lLemRl1.beginShape();
  lLemRl1.fill(255);
  lLemRl1.noStroke();
  lLemRl1.vertex(40, 90);
  lLemRl1.vertex(60, 90);
  lLemRl1.vertex(60, 100);
  lLemRl1.vertex(40, 100);
  lLemRl1.vertex(40, 90);
  lLemRl1.endShape(CLOSE);
  
  //Left Lemmings left knee 1
  lLemLk1 = createShape();
  lLemLk1.beginShape();
  lLemLk1.fill(255);
  lLemLk1.noStroke();
  lLemLk1.vertex(20, 80);
  lLemLk1.vertex(30, 80);
  lLemLk1.vertex(30, 90);
  lLemLk1.vertex(20, 90);
  lLemLk1.vertex(20, 80);
  lLemLk1.endShape(CLOSE); 
  
  //Left Lemmings left leg 1
  lLemLl1 = createShape();
  lLemLl1.beginShape();
  lLemLl1.fill(255);
  lLemLl1.noStroke();
  lLemLl1.vertex(10, 60);
  lLemLl1.vertex(20, 60);
  lLemLl1.vertex(20, 80);
  lLemLl1.vertex(10, 80);
  lLemLl1.vertex(10, 60);
  lLemLl1.endShape(CLOSE);
  
  //Left Lemmings righ arm 1
  lLemRa1 = createShape();
  lLemRa1.beginShape();
  lLemRa1.fill(255);
  lLemRa1.noStroke();
  lLemRa1.vertex(50, 50);
  lLemRa1.vertex(60, 50);
  lLemRa1.vertex(60, 70);
  lLemRa1.vertex(50, 70);
  lLemRa1.vertex(50, 50);
  lLemRa1.endShape(CLOSE);
  
  //Left Lemmings face 1
  lLemFace1 = createShape();
  lLemFace1.beginShape();
  lLemFace1.fill(255);
  lLemFace1.noStroke();
  lLemFace1.vertex(30, 20);
  lLemFace1.vertex(40, 20);
  lLemFace1.vertex(40, 30);
  lLemFace1.vertex(50, 30);
  lLemFace1.vertex(50, 50);
  lLemFace1.vertex(40, 50);
  lLemFace1.vertex(40, 40);
  lLemFace1.vertex(20, 40);
  lLemFace1.vertex(20, 30);
  lLemFace1.vertex(30, 30);
  lLemFace1.vertex(30, 20);
  lLemFace1.endShape(CLOSE);
  
  //Left Lemmings hair 1
  lLemHair1 = createShape();
  lLemHair1.beginShape();
  lLemHair1.fill(90, 20, 180);
  lLemHair1.noStroke();
  lLemHair1.vertex(30, 10);
  lLemHair1.vertex(40, 10);
  lLemHair1.vertex(40, 0);
  lLemHair1.vertex(50, 0);
  lLemHair1.vertex(50, 10);
  lLemHair1.vertex(40, 10);
  lLemHair1.vertex(60, 10);
  lLemHair1.vertex(60, 30);
  lLemHair1.vertex(40, 30);
  lLemHair1.vertex(40, 20);
  lLemHair1.vertex(30, 20);
  lLemHair1.vertex(30, 10);
  lLemHair1.endShape(CLOSE);
  
  //Left Lemmings hair forward piece 1
  lLemHF1 = createShape();
  lLemHF1.beginShape();
  lLemHF1.fill(90, 20, 180);
  lLemHF1.noStroke();
  lLemHF1.vertex(20, 0);
  lLemHF1.vertex(30, 0);
  lLemHF1.vertex(30, 10);
  lLemHF1.vertex(20, 10);
  lLemHF1.vertex(20, 0);
  lLemHF1.endShape(CLOSE); 
  
  lLem1.addChild(lLemBod1);
  lLem1.addChild(lLemRl1);
  lLem1.addChild(lLemLk1);
  lLem1.addChild(lLemLl1);
  lLem1.addChild(lLemRa1);
  lLem1.addChild(lLemFace1);
  lLem1.addChild(lLemHair1);
  lLem1.addChild(lLemHF1);
  
  shape(lLem1);
}