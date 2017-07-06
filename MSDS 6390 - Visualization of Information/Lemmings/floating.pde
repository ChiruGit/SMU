//FLoating Lemming
void floating() {
  PShape fLem;
  PShape fLemBod; 
  PShape fLemRl;
  PShape fLemLl;
  PShape fLemLa;
  PShape fLemRa;
  PShape fLemFace;
  PShape fLemHair;
  PShape  fLemHF;
  
  fLem=createShape(GROUP);
  
  //Floating Lemmings Body 
  fLemBod = createShape();
  fLemBod.beginShape();
  fLemBod.fill(0, 125, 0);
  fLemBod.noStroke();
  fLemBod.vertex(40, 40);
  fLemBod.vertex(60, 40);
  fLemBod.vertex(60, 90);
  fLemBod.vertex(50, 90);
  fLemBod.vertex(50, 100);
  fLemBod.vertex(40, 100);
  fLemBod.vertex(40, 40);
  fLemBod.endShape(CLOSE);
  
  //Floating Lemmings right leg
  fLemRl = createShape();
  fLemRl.beginShape();
  fLemRl.fill(255);
  fLemRl.noStroke();
  fLemRl.vertex(60, 80);
  fLemRl.vertex(80, 80);
  fLemRl.vertex(80, 90);
  fLemRl.vertex(60, 90);
  fLemRl.vertex(60, 80);
  fLemRl.endShape(CLOSE);
  
  //Floating Lemmings left leg
  fLemLl = createShape();
  fLemLl.beginShape();
  fLemLl.fill(255);
  fLemLl.noStroke();
  fLemLl.vertex(20, 80);
  fLemLl.vertex(40, 80);
  fLemLl.vertex(40, 90);
  fLemLl.vertex(20, 90);
  fLemLl.vertex(20, 80);
  fLemLl.endShape(CLOSE);
  
  //Floating Lemmings left arm
  fLemLa = createShape();
  fLemLa.beginShape();
  fLemLa.fill(255);
  fLemLa.noStroke();
  fLemLa.vertex(20, 50);
  fLemLa.vertex(40, 50);
  fLemLa.vertex(40, 60);
  fLemLa.vertex(20, 60);
  fLemLa.vertex(20, 50);
  fLemLa.endShape(CLOSE);
  
  //Floating Lemmings right arm
  fLemRa = createShape();
  fLemRa.beginShape();
  fLemRa.fill(255);
  fLemRa.noStroke();
  fLemRa.vertex(60, 50);
  fLemRa.vertex(80, 50);
  fLemRa.vertex(80, 60);
  fLemRa.vertex(60, 60);
  fLemRa.vertex(60, 50);
  fLemRa.endShape(CLOSE);
  
  //Floating Lemmings face
  fLemFace = createShape();
  fLemFace.beginShape();
  fLemFace.fill(255);
  fLemFace.noStroke();
  fLemFace.vertex(50, 20);
  fLemFace.vertex(60, 20);
  fLemFace.vertex(60, 30);
  fLemFace.vertex(70, 30);
  fLemFace.vertex(70, 40);
  fLemFace.vertex(40, 40);
  fLemFace.vertex(40, 30);
  fLemFace.vertex(50, 30);
  fLemFace.vertex(50, 20);
  fLemFace.endShape(CLOSE);
  
  //Floating Lemmings hair
  fLemHair = createShape();
  fLemHair.beginShape();
  fLemHair.fill(90, 20, 180);
  fLemHair.noStroke();
  fLemHair.vertex(30, 10);
  fLemHair.vertex(40, 10);
  fLemHair.vertex(40, 20);
  fLemHair.vertex(50, 20);
  fLemHair.vertex(50, 30);
  fLemHair.vertex(40, 30);
  fLemHair.vertex(40, 40);
  fLemHair.vertex(30, 40);
  fLemHair.vertex(30, 10);
  fLemHair.endShape(CLOSE);
  
  //Floating Lemmings forward piece of hair
  fLemHF = createShape();
  fLemHF.beginShape();
  fLemHF.fill(90, 20, 180);
  fLemHF.noStroke();
  fLemHF.vertex(50, 10);
  fLemHF.vertex(60, 10);
  fLemHF.vertex(60, 20);
  fLemHF.vertex(50, 20);
  fLemHF.vertex(50, 10);
  fLemHF.endShape(CLOSE); 
  
  fLem.addChild(fLemBod);
  fLem.addChild(fLemRl);
  fLem.addChild(fLemLl);
  fLem.addChild(fLemLa);
  fLem.addChild(fLemRa);
  fLem.addChild(fLemFace);
  fLem.addChild(fLemHair);
  fLem.addChild(fLemHF);
  
  shape(fLem);
}