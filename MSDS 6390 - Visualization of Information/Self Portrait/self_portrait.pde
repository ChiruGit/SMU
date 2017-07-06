// Zach Brown
// MSDS 6390 - 404
// self_portrait.pde
// 1-28-2016

void setup(){
  size(600, 600);
  background(160,171,131);
  noStroke();
  
  // shirt
  fill(144, 191, 217);
  triangle(0, height, width, height, width * .5, height * .65);
  
  // ears
  fill(255, 209, 163);
  rect(width *.25, height * .4, width * .05, height * .15, height * .05);
  rect(width *.7, height * .4, width * .05, height * .15, height * .05);
  
  // face
  ellipse(width / 2, height / 2, width * .45, height * .75);

  // left eye
  fill(255);
  ellipse(width * .4, height * .45, width * .1, height * .05);
  strokeWeight(2);
  fill(28, 50, 75);
  ellipse(width * .4, height * .45, width * .05, height * .05);
  fill(0);
  ellipse(width * .4, height * .45, width * .025, height * .025);
  
  // right eye
  fill(255);
  ellipse(width * .6, height * .45, width * .1, height * .05);
  strokeWeight(2);
  fill(28, 50, 75);
  ellipse(width * .6, height * .45, width * .05, height * .05);
  fill(0);
  ellipse(width * .6, height * .45, width * .025, height * .025);
  
  // hair
  fill(70, 68, 45);
  noStroke();
  for (int i = 1; i < 65; i++) {
    arc(width * .55 - i, height * .225, width * .2, height * .2, PI, TWO_PI);
  }
  stroke(70, 68, 45);
  noFill();
  strokeWeight(7);
  arc(width / 2, height / 2, width * .45, height * .75, PI, TWO_PI);

  // eyebrows
  strokeWeight(15);
  arc(width * .4, height * .45, width * .3, height * .12, PI * 1.375, PI * 1.6);
  arc(width * .6, height * .45, width * .3, height * .12, PI * 1.4, PI * 1.625);
  
  // mouth
  stroke(161, 79, 67);
  arc(width / 2, height * .625, width * .3, height * .12, PI * .35, PI * .65);
  arc(width / 2, height * .61, width * .3, height * .12, PI * .35, PI * .65);
  
  // nose
  stroke(0);
  strokeWeight(1);
  line(width * .475, height * .4, width * .475, height * .52);
  line(width * .525, height * .4, width * .525, height * .52);
  line(width * .475, height * .52, width * .45, height * .574);
  line(width * .525, height * .52, width * .55, height * .574);
  fill(0);
  ellipse(width * .475, height * .57, width * .015, height * .015);
  ellipse(width * .525, height * .57, width * .015, height * .015);
  noFill();
  arc(width / 2, height * .565, width * .04, height * .03, 0, PI);
  arc(width * .46, height * .57, width * .015, height * .015, 0, PI);
  arc(width * .54, height * .57, width * .015, height * .015, 0, PI);
}