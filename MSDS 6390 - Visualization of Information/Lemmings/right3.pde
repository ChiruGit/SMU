//Lemming wallking are four different frames to the right
//right Lemming 3
void right3() {
  PShape rLem3;
  PShape rLemBod13;  
  PShape rLemBod23; 
  PShape rLemBod33; 
  PShape rLemRl3;
  PShape rLemLl3;
  PShape rLemLa3;
  PShape rLemRa3;
  PShape rLemFace3;
  PShape rLemHair3;
  
  rLem3=createShape(GROUP);
  
  //right Lemmings part 1 of Body 3
  rLemBod13 = createShape();
  rLemBod13.beginShape();
  rLemBod13.fill(0, 125, 0);
  rLemBod13.noStroke();
  rLemBod13.vertex(90, 60);
  rLemBod13.vertex(100, 60);
  rLemBod13.vertex(100, 90);
  rLemBod13.vertex(80, 90);
  rLemBod13.vertex(80, 70);
  rLemBod13.vertex(90, 70);
  rLemBod13.vertex(90, 60);
  rLemBod13.endShape(CLOSE);
  
  //right Lemmings part 2 of Body 3
  rLemBod23 = createShape();
  rLemBod23.beginShape();
  rLemBod23.fill(0, 125, 0);
  rLemBod23.noStroke();
  rLemBod23.vertex(90, 40);
  rLemBod23.vertex(100, 40);
  rLemBod23.vertex(100, 50);
  rLemBod23.vertex(90, 50);
  rLemBod23.vertex(90, 40);
  rLemBod23.endShape(CLOSE);
  
  //right Lemmings part 3 of Body 3
  rLemBod33 = createShape();
  rLemBod33.beginShape();
  rLemBod33.fill(0, 125, 0);
  rLemBod33.noStroke();
  rLemBod33.vertex(80, 50);
  rLemBod33.vertex(90, 50);
  rLemBod33.vertex(90, 60);
  rLemBod33.vertex(80, 60);
  rLemBod33.vertex(80, 50);
  rLemBod33.endShape(CLOSE);
  
  //right Lemmings right leg 3
  rLemRl3 = createShape();
  rLemRl3.beginShape();
  rLemRl3.fill(255);
  rLemRl3.noStroke();
  rLemRl3.vertex(80, 90);
  rLemRl3.vertex(100, 90);
  rLemRl3.vertex(100, 100);
  rLemRl3.vertex(80, 100);
  rLemRl3.vertex(80, 90);
  rLemRl3.endShape(CLOSE);
  
  //right Lemmings right leg 3 
  rLemLl3 = createShape();
  rLemLl3.beginShape();
  rLemLl3.fill(255);
  rLemLl3.noStroke();
  rLemLl3.vertex(70, 80);
  rLemLl3.vertex(80, 80);
  rLemLl3.vertex(80, 90);
  rLemLl3.vertex(70, 90);
  rLemLl3.vertex(70, 80);
  rLemLl3.endShape(CLOSE);
  
  //right Lemmings right arm 3
  rLemLa3 = createShape();
  rLemLa3.beginShape();
  rLemLa3.fill(255);
  rLemLa3.noStroke();
  rLemLa3.vertex(90, 50);
  rLemLa3.vertex(100, 50);
  rLemLa3.vertex(100, 60);
  rLemLa3.vertex(90, 60);
  rLemLa3.vertex(90, 50);
  rLemLa3.endShape(CLOSE);
  
  //right Lemmings right arm 3
  rLemRa3 = createShape();
  rLemRa3.beginShape();
  rLemRa3.fill(255);
  rLemRa3.noStroke();
  rLemRa3.vertex(80, 60);
  rLemRa3.vertex(90, 60);
  rLemRa3.vertex(90, 70);
  rLemRa3.vertex(80, 70);
  rLemRa3.vertex(80, 60);
  rLemRa3.endShape(CLOSE);
  
  //right Lemmings face 3 
  rLemFace3 = createShape();
  rLemFace3.beginShape();
  rLemFace3.fill(255);
  rLemFace3.noStroke();
  rLemFace3.vertex(90, 20);
  rLemFace3.vertex(100, 20);
  rLemFace3.vertex(100, 30);
  rLemFace3.vertex(110, 30);
  rLemFace3.vertex(110, 40);
  rLemFace3.vertex(90, 40);
  rLemFace3.vertex(90, 50);
  rLemFace3.vertex(80, 50);
  rLemFace3.vertex(80, 30);
  rLemFace3.vertex(90, 30);
  rLemFace3.vertex(90, 20);
  rLemFace3.endShape(CLOSE);
  
  //right Lemmings hair 3
  rLemHair3 = createShape();
  rLemHair3.beginShape();
  rLemHair3.fill(90, 20, 180);
  rLemHair3.noStroke();
  rLemHair3.vertex(70, 10);
  rLemHair3.vertex(110, 10);
  rLemHair3.vertex(110, 20);
  rLemHair3.vertex(90, 20);
  rLemHair3.vertex(90, 30);
  rLemHair3.vertex(80, 30);
  rLemHair3.vertex(80, 40);
  rLemHair3.vertex(70, 40);
  rLemHair3.vertex(70, 10);
  rLemHair3.endShape(CLOSE);
  
  rLem3.addChild(rLemBod13);
  rLem3.addChild(rLemBod23);
  rLem3.addChild(rLemBod33);
  rLem3.addChild(rLemRl3);
  rLem3.addChild(rLemLl3);
  rLem3.addChild(rLemLa3);
  rLem3.addChild(rLemRa3);
  rLem3.addChild(rLemFace3);
  rLem3.addChild(rLemHair3);
  
  shape(rLem3);
}