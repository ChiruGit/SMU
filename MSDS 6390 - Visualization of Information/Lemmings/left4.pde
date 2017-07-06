//Lemming wallking are four different frames to the left
//Left Lemming 4
void left4(){
  PShape lLem4;
  PShape lLemBod14;  
  PShape lLemBod24;  
  PShape lLemRl4;
  PShape lLemLl4;
  PShape lLemLa4;
  PShape lLemFace4;
  PShape lLemHair4;
  PShape lLemHF4;
  
  lLem4=createShape(GROUP);
   
  //Left Lemmings part 1 of body 4
  lLemBod14 = createShape();
  lLemBod14.beginShape();
  lLemBod14.fill(0, 125, 0);
  lLemBod14.noStroke();
  lLemBod14.vertex(210, 40);
  lLemBod14.vertex(220, 40);
  lLemBod14.vertex(220, 60);
  lLemBod14.vertex(210, 60);
  lLemBod14.vertex(210, 40);
  lLemBod14.endShape(CLOSE);
  
  //Left Lemmings part 2 of body 4
  lLemBod24 = createShape();
  lLemBod24.beginShape();
  lLemBod24.fill(0, 125, 0);
  lLemBod24.noStroke();
  lLemBod24.vertex(220, 60);
  lLemBod24.vertex(230, 60);
  lLemBod24.vertex(230, 80);
  lLemBod24.vertex(240, 80);
  lLemBod24.vertex(240, 90);
  lLemBod24.vertex(200, 90);
  lLemBod24.vertex(200, 80);
  lLemBod24.vertex(210, 80);
  lLemBod24.vertex(210, 70);
  lLemBod24.vertex(220, 70);
  lLemBod24.vertex(220, 60);
  lLemBod24.endShape(CLOSE);
   
   
  //Left Lemmings right leg 4
  lLemRl4 = createShape();
  lLemRl4.beginShape();
  lLemRl4.fill(255);
  lLemRl4.noStroke();
  lLemRl4.vertex(240, 80);
  lLemRl4.vertex(250, 80);
  lLemRl4.vertex(250, 100);
  lLemRl4.vertex(240, 100);
  lLemRl4.vertex(240, 80);
  lLemRl4.endShape(CLOSE);
  
  //Left Lemmings left leg 4  
  lLemLl4 = createShape();
  lLemLl4.beginShape();
  lLemLl4.fill(255);
  lLemLl4.noStroke();
  lLemLl4.vertex(200, 90);
  lLemLl4.vertex(220, 90);
  lLemLl4.vertex(220, 100);
  lLemLl4.vertex(200, 100);
  lLemLl4.vertex(200, 90);
  lLemLl4.endShape(CLOSE);
  
  //Left Lemmings left arm 4
  lLemLa4 = createShape();
  lLemLa4.beginShape();
  lLemLa4.fill(255);
  lLemLa4.noStroke();
  lLemLa4.vertex(210, 60);
  lLemLa4.vertex(220, 60);
  lLemLa4.vertex(220, 70);
  lLemLa4.vertex(210, 70);
  lLemLa4.vertex(210, 60);
  lLemLa4.endShape(CLOSE);
  
  //Left Lemmings face 4
  lLemFace4 = createShape();
  lLemFace4.beginShape();
  lLemFace4.fill(255);
  lLemFace4.noStroke();
  lLemFace4.vertex(210, 20);
  lLemFace4.vertex(220, 20);
  lLemFace4.vertex(220, 30);
  lLemFace4.vertex(230, 30);
  lLemFace4.vertex(230, 60);
  lLemFace4.vertex(220, 60);
  lLemFace4.vertex(220, 40);
  lLemFace4.vertex(200, 40);
  lLemFace4.vertex(200, 30);
  lLemFace4.vertex(210, 30);
  lLemFace4.vertex(210, 20);
  lLemFace4.endShape(CLOSE);
  
  //Left Lemmings hair forward piece 4
  lLemHF4 = createShape();
  lLemHF4.beginShape();
  lLemHF4.fill(90, 20, 180);
  lLemHF4.noStroke();
  lLemHF4.vertex(200, 20);
  lLemHF4.vertex(210, 20);
  lLemHF4.vertex(210, 30);
  lLemHF4.vertex(200, 30);
  lLemHF4.vertex(200, 20);
  lLemHF4.endShape(CLOSE); 
   
  //Left Lemmings hair 4
  lLemHair4 = createShape();
  lLemHair4.beginShape();
  lLemHair4.fill(90, 20, 180);
  lLemHair4.noStroke();
  lLemHair4.vertex(210, 10);
  lLemHair4.vertex(230, 10);
  lLemHair4.vertex(230, 20);
  lLemHair4.vertex(240, 20);
  lLemHair4.vertex(240, 40);
  lLemHair4.vertex(230, 40);
  lLemHair4.vertex(230, 30);
  lLemHair4.vertex(220, 30);
  lLemHair4.vertex(220, 20);
  lLemHair4.vertex(210, 20);
  lLemHair4.vertex(210, 10);
  lLemHair4.endShape(CLOSE);
  
  lLem4.addChild(lLemBod14);
  lLem4.addChild(lLemBod24);
  lLem4.addChild(lLemRl4);
  lLem4.addChild(lLemLl4);
  lLem4.addChild(lLemLa4);
  lLem4.addChild(lLemFace4);
  lLem4.addChild(lLemHair4);
  lLem4.addChild (lLemHF4);

  shape(lLem4);
}