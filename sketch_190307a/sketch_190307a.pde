void setup() {
 size(510, 300);
}

void draw() {
  background(255,255,255);
  stroke(102, 178, 255);
  strokeWeight(3);
  
  // ellipses
  ellipse(50, 50, 55, 55);
  ellipse(105, 50, 55, 55);
  ellipse(200, 105, 55, 55);
  ellipse(280, 50, 55, 55);
  ellipse(340, 160, 55, 55);
  
  // rectangles
  rect(410, 20, 100, 60);
  rect(480, 35, 30, 30);
  rect(70, 160, 80, 80);
  rect(135, 200, 100, 50);
  rect(170, 215, 30, 20);

  // lines
  line(170, 0, 170, 200);
  line(490, 80, 490, 280);
  line(320, 280, 490, 280);
  
}
