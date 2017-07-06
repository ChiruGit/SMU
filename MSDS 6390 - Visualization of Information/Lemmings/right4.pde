//Lemming wallking are four different frames to the right
//right Lemming 4
void right4() {
  PShape rLem4;
  PShape rLemBod14;  
  PShape rLemBod24;  
  PShape rLemRl4;
  PShape rLemLl4;
  PShape rLemLa4;
  PShape rLemFace4;
  PShape rLemHair4;
  PShape rLemHF4;
  
  rLem4=createShape(GROUP);
  
  //right Lemmings part 1 of body 4
  rLemBod14 = createShape();
  rLemBod14.beginShape();
  rLemBod14.fill(0, 125, 0);
  rLemBod14.noStroke();
  rLemBod14.vertex(40, 40);
  rLemBod14.vertex(50, 40);
  rLemBod14.vertex(50, 60);
  rLemBod14.vertex(40, 60);
  rLemBod14.vertex(40, 40);
  rLemBod14.endShape(CLOSE);
  
  //right Lemmings part 2 of body 4
  rLemBod24 = createShape();
  rLemBod24.beginShape();
  rLemBod24.fill(0, 125, 0);
  rLemBod24.noStroke();
  rLemBod24.vertex(30, 60);
  rLemBod24.vertex(40, 60);
  rLemBod24.vertex(40, 70);
  rLemBod24.vertex(50, 70);
  rLemBod24.vertex(50, 80);
  rLemBod24.vertex(60, 80);
  rLemBod24.vertex(60, 90);
  rLemBod24.vertex(20, 90);
  rLemBod24.vertex(20, 80);
  rLemBod24.vertex(30, 80);
  rLemBod24.vertex(30, 60);
  rLemBod24.endShape(CLOSE);
  
  //right Lemmings right leg 4
  rLemRl4 = createShape();
  rLemRl4.beginShape();
  rLemRl4.fill(255);
  rLemRl4.noStroke();
  rLemRl4.vertex(40, 90);
  rLemRl4.vertex(60, 90);
  rLemRl4.vertex(60, 100);
  rLemRl4.vertex(40, 100);
  rLemRl4.vertex(40, 90);
  rLemRl4.endShape(CLOSE);
  
  //right Lemmings left leg 4  
  rLemLl4 = createShape();
  rLemLl4.beginShape();
  rLemLl4.fill(255);
  rLemLl4.noStroke();
  rLemLl4.vertex(10, 80);
  rLemLl4.vertex(20, 80);
  rLemLl4.vertex(20, 100);
  rLemLl4.vertex(10, 100);
  rLemLl4.vertex(10, 80);
  rLemLl4.endShape(CLOSE);
  
  //right Lemmings left arm 4
  rLemLa4 = createShape();
  rLemLa4.beginShape();
  rLemLa4.fill(255);
  rLemLa4.noStroke();
  rLemLa4.vertex(40, 60);
  rLemLa4.vertex(50, 60);
  rLemLa4.vertex(50, 70);
  rLemLa4.vertex(40, 70);
  rLemLa4.vertex(40, 60);
  rLemLa4.endShape(CLOSE);
  
  //right Lemmings face 4
  rLemFace4 = createShape();
  rLemFace4.beginShape();
  rLemFace4.fill(255);
  rLemFace4.noStroke();
  rLemFace4.vertex(40, 20);
  rLemFace4.vertex(50, 20);
  rLemFace4.vertex(50, 30);
  rLemFace4.vertex(60, 30);
  rLemFace4.vertex(60, 40);
  rLemFace4.vertex(40, 40);
  rLemFace4.vertex(40, 60);
  rLemFace4.vertex(30, 60);
  rLemFace4.vertex(30, 30);
  rLemFace4.vertex(40, 30);
  rLemFace4.vertex(40, 20);
  rLemFace4.endShape(CLOSE);
  
  //right Lemmings hair forward piece 4
  rLemHF4 = createShape();
  rLemHF4.beginShape();
  rLemHF4.fill(90, 20, 180);
  rLemHF4.noStroke();
  rLemHF4.vertex(50, 20);
  rLemHF4.vertex(60, 20);
  rLemHF4.vertex(60, 30);
  rLemHF4.vertex(50, 30);
  rLemHF4.vertex(50, 20);
  rLemHF4.endShape(CLOSE); 
  
  //right Lemmings hair 4
  rLemHair4 = createShape();
  rLemHair4.beginShape();
  rLemHair4.fill(90, 20, 180);
  rLemHair4.noStroke();
  rLemHair4.vertex(30, 10);
  rLemHair4.vertex(50, 10);
  rLemHair4.vertex(50, 20);
  rLemHair4.vertex(40, 20);
  rLemHair4.vertex(40, 30);
  rLemHair4.vertex(30, 30);
  rLemHair4.vertex(30, 40);
  rLemHair4.vertex(20, 40);
  rLemHair4.vertex(20, 20);
  rLemHair4.vertex(30, 20);
  rLemHair4.vertex(30, 10);
  rLemHair4.endShape(CLOSE);
  
  rLem4.addChild(rLemBod14);
  rLem4.addChild(rLemBod24);
  rLem4.addChild(rLemRl4);
  rLem4.addChild(rLemLl4);
  rLem4.addChild(rLemLa4);
  rLem4.addChild(rLemFace4);
  rLem4.addChild(rLemHair4);
  rLem4.addChild (rLemHF4);
  
  shape(rLem4);
}