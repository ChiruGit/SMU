//Lemming wallking are four different frames to the left
//Left Lemming 3
void left3(){
  PShape lLem3;
  PShape lLemBod13;  
  PShape lLemBod23; 
  PShape lLemBod33; 
  PShape lLemRl3;
  PShape lLemLl3;
  PShape lLemLa3;
  PShape lLemRa3;
  PShape lLemFace3;
  PShape lLemHair3;
  
   lLem3=createShape(GROUP);
  
  //Left Lemmings part 1 of Body 3
   lLemBod13 = createShape();
   lLemBod13.beginShape();
   lLemBod13.fill(0, 125, 0);
   lLemBod13.noStroke();
   lLemBod13.vertex(160, 60);
   lLemBod13.vertex(170, 60);
   lLemBod13.vertex(170, 70);
   lLemBod13.vertex(180, 70);
   lLemBod13.vertex(180, 90);
   lLemBod13.vertex(160, 90);
   lLemBod13.vertex(160, 60);
   lLemBod13.endShape(CLOSE);
  
   //Left Lemmings part 2 of Body 3
   lLemBod23 = createShape();
   lLemBod23.beginShape();
   lLemBod23.fill(0, 125, 0);
   lLemBod23.noStroke();
   lLemBod23.vertex(160, 40);
   lLemBod23.vertex(170, 40);
   lLemBod23.vertex(170, 50);
   lLemBod23.vertex(160, 50);
   lLemBod23.vertex(160, 40);
   lLemBod23.endShape(CLOSE);
   
   //Left Lemmings part 3 of Body 3
   lLemBod33 = createShape();
   lLemBod33.beginShape();
   lLemBod33.fill(0, 125, 0);
   lLemBod33.noStroke();
   lLemBod33.vertex(170, 50);
   lLemBod33.vertex(180, 50);
   lLemBod33.vertex(180, 60);
   lLemBod33.vertex(170, 60);
   lLemBod33.vertex(170, 50);
   lLemBod33.endShape(CLOSE);
   
   //Left Lemmings right leg 3
   lLemRl3 = createShape();
   lLemRl3.beginShape();
   lLemRl3.fill(255);
   lLemRl3.noStroke();
   lLemRl3.vertex(180, 80);
   lLemRl3.vertex(190, 80);
   lLemRl3.vertex(190, 90);
   lLemRl3.vertex(180, 90);
   lLemRl3.vertex(180, 80);
   lLemRl3.endShape(CLOSE);
   
   //Left Lemmings left leg 3 
   lLemLl3 = createShape();
   lLemLl3.beginShape();
   lLemLl3.fill(255);
   lLemLl3.noStroke();
   lLemLl3.vertex(160, 90);
   lLemLl3.vertex(180, 90);
   lLemLl3.vertex(180, 100);
   lLemLl3.vertex(160, 100);
   lLemLl3.vertex(160, 90);
   lLemLl3.endShape(CLOSE);
   
   //Left Lemmings left arm 3
   lLemLa3 = createShape();
   lLemLa3.beginShape();
   lLemLa3.fill(255);
   lLemLa3.noStroke();
   lLemLa3.vertex(160, 50);
   lLemLa3.vertex(170, 50);
   lLemLa3.vertex(170, 60);
   lLemLa3.vertex(160, 60);
   lLemLa3.vertex(160, 50);
   lLemLa3.endShape(CLOSE);
   
   //Left Lemmings right arm 3
   lLemRa3 = createShape();
   lLemRa3.beginShape();
   lLemRa3.fill(255);
   lLemRa3.noStroke();
   lLemRa3.vertex(170, 60);
   lLemRa3.vertex(180, 60);
   lLemRa3.vertex(180, 70);
   lLemRa3.vertex(170, 70);
   lLemRa3.vertex(170, 60);
   lLemRa3.endShape(CLOSE);
  
   //Left Lemmings face 3 
   lLemFace3 = createShape();
   lLemFace3.beginShape();
   lLemFace3.fill(255);
   lLemFace3.noStroke();
   lLemFace3.vertex(160, 20);
   lLemFace3.vertex(170, 20);
   lLemFace3.vertex(170, 30);
   lLemFace3.vertex(180, 30);
   lLemFace3.vertex(180, 50);
   lLemFace3.vertex(170, 50);
   lLemFace3.vertex(170, 40);
   lLemFace3.vertex(150, 40);
   lLemFace3.vertex(150, 30);
   lLemFace3.vertex(160, 30);
   lLemFace3.vertex(160, 20);
   lLemFace3.endShape(CLOSE);
   
   //Left Lemmings hair 3
   lLemHair3 = createShape();
   lLemHair3.beginShape();
   lLemHair3.fill(90, 20, 180);
   lLemHair3.noStroke();
   lLemHair3.vertex(150, 10);
   lLemHair3.vertex(190, 10);
   lLemHair3.vertex(190, 40);
   lLemHair3.vertex(180, 40);
   lLemHair3.vertex(180, 30);
   lLemHair3.vertex(170, 30);
   lLemHair3.vertex(170, 20);
   lLemHair3.vertex(150, 20);
   lLemHair3.vertex(150, 10);
   lLemHair3.endShape(CLOSE);
   
   lLem3.addChild(lLemBod13);
   lLem3.addChild(lLemBod23);
   lLem3.addChild(lLemBod33);
   lLem3.addChild(lLemRl3);
   lLem3.addChild(lLemLl3);
   lLem3.addChild(lLemLa3);
   lLem3.addChild(lLemRa3);
   lLem3.addChild(lLemFace3);
   lLem3.addChild(lLemHair3);
  
   shape(lLem3);
}