SpinDots dots1;
SpinDots dots2;
SpinDots dots3;
SpinDots dots4;

int waterDirection = 1;
float waterHeight1 = 0;
float waterHeight2 = 0;

Dew[] dews = new Dew[20];

void setup() {
  size(600, 800);
  dots1 = new SpinDots(width/2, height-550, 0.02, 65.0);
  dots2 = new SpinDots(width/2, height-550, 0.04, 55.0);
  dots3 = new SpinDots(width/2, height-550, 0.03, 27.5);
  dots4 = new SpinDots(width/2, height-550, 0.045, 20.0);


  for (int i = 0; i < dews.length; i++) {
    dews[i] = new Dew();
  }
}

void draw() {
  background(#fbf7eb);
  rectMode(CENTER);
  strokeWeight(1.5);
 
  waterHeight1 += waterDirection;
  waterHeight2 += sin(.0045*waterHeight1-4.2)*waterDirection;
  
  fill(#8693F5);
  rect(0, height, 2*width, waterHeight2-height+390);
  fill(#3C53BC);
  rect(0, height, 2*width, waterHeight1-height+450);

  if ((waterHeight1 > height-600) || (waterHeight1 < 0)) {
    waterDirection = waterDirection * -1;
  }

  for (int i = 0; i < dews.length; i++) {
    dews[i].drop();
    dews[i].show();
  }

  noStroke();
  fill(#fbf7eb);
  ellipse(width/2, height-550, 110, 110);

  fill(#3C53BC);
  dots1.update();
  dots1.display();

  fill(#fbf7eb);
  dots2.update();
  dots2.display();

  fill(#3C53BC);
  dots3.update();
  dots3.display();
  
  fill(#fbf7eb);
  dots4.update();
  dots4.display();
}

class Spin {
  float x, y, speed;
  float angle = 0.0;
  Spin(float xPos, float yPos, float s) {
    x = xPos;
    y = yPos;
    speed = s;
  }
  void update() {
    angle += speed;
  }
}

class SpinDots extends Spin {
  float dim;
  SpinDots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
  void display() {
    noStroke();
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate(angle);
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);
    popMatrix();
  }
}

class Dew {
  float x = random(50)+275;
  float y = random(200, 400);
  float ySpeed = random(0, 15);
  float len = random(5, 25);

  void drop() {
    y = y + ySpeed;
    ySpeed = ySpeed + 0.001;

    if (y > height-100) {
      y = random(200, 400);
      ySpeed = random(0, 15);
    }
  }

  void show() {
    stroke(#3C53BC);
    line(x, y, x, y+len);
  }
}
