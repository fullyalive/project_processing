float diameter; 
float angle1 = 0;
float angle2 = 0;
float yoff = 0.0;
float randomNumber = random(100);
boolean changed = false;
float moveX, moveY;

void setup() {
  size(800, 800);
  diameter = height/2 - randomNumber;
  noStroke();
}

void draw() {
  background(0);
  if (!changed) {
    
    // create mouse following eclipse
    
    pushMatrix();
    fill(255, 100, 100);
    float d1 = (cos(angle1) * diameter/2) + diameter/2;
    popMatrix();
    fill(255, 50, 100);
    float d2 = (cos(angle2 + PI/2) * diameter/2) + diameter/2;
 
    int inverseX = width-mouseX;
    int inverseY = width-mouseY;
    moveX = lerp(moveX, mouseX, 0.05);
    moveY = lerp(moveY, inverseY, 0.05);

    ellipse(moveX, height/2, mouseY/2 + d1, mouseY/2 + d1);
    ellipse(inverseX, height/2, (moveY/2) + d2, (moveY/2) +d2);
  
    angle1 += 0.02;
    angle2 += randomNumber*0.001;
    
    if (mousePressed) {
    changed = true;
    }
  } else { 
    if (mousePressed) {
    changed = false;
    }
  }
}
