class Star {
  float x;
  float y;
  float z;
  float pz;
  float colorValue = 0;
  float increment;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
  }  
  
  void blacked() {
    if (mousePressed) {
      colorValue -= 120;
    }
  }

  void colored() {
    if (mousePressed) {
      colorValue += 120;
    }
  }
  
  void update() {
    z = z - speed;
    if (z < 1) {
      z = height;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  
  void show() {
    fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z, 0, width, 16, 0);
    ellipse(sx, sy, r, r);
 
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    stroke(242, 242, 242);
    line(px, py, sx, sy);
    
    px = x;
    py = y;

  }
}
