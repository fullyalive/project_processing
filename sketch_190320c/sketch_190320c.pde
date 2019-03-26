float x = width;
float y1off = 0.0;
float y2off = 0.0;
float randomNumber = random(100);
float moveX, moveY;

Wind[] winds = new Wind[15];

void setup() {
  size(1000, 800);
  for(int i = 0; i < winds.length; i++) {
    winds[i] = new Wind();
  }
}

void draw() {
  background(#fbf7eb);
  for(int i = 0; i < winds.length; i++) {
    winds[i].blow();
    winds[i].show();
  }

  // create foreground wave & ball
  beginShape();
  noStroke();
  float x1off = 0;
  float z1off = y1off;
  
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(x1off, y1off, z1off), 0, 1, 0, height);
    vertex(x, y);
    if(x == width/2) {
      fill(255, 204, 0);
      moveY = lerp(moveY, y-16, 0.3);
      ellipse(width/2, moveY, 200, 200);
    }
    x1off += 0.02;
  }    
  y1off += 0.01;
  z1off += 0.005;
  
  fill(70, 140, 240);
  vertex(width, height);
  vertex(0, height);
  
  endShape(CLOSE);
  
  // create background wave
  beginShape();
  
  noStroke();
  float x2off = 0;
  float z2off = y2off;
  
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(x2off, y2off, z2off), 0, 1, 0, height+200);
    vertex(x, y);
    x2off += 0.005;
  }    
  y2off += 0.005;
  z2off += 0.005;
  
  fill(70, 240, 240);
  vertex(width, height);
  vertex(0, height);
  
  endShape(CLOSE);
  
}

// create wind

class Wind {
  float x = random(width)+100;
  float y = random(300);
  float xSpeed = random(-20);
  float len = random(10, 100);
  
  void blow() {
    x = x + xSpeed;
    xSpeed = xSpeed - 0.03;
    if (x < 0) {
      x = width;
      y = random(300);
      xSpeed = random(-10, -50);
    }
  }
  
  void show() {
    stroke(200);
    line(x, y, x+len, y);
  }
}
