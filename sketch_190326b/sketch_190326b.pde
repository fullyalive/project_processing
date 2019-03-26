int stage = 0;
int counter = 0;
color c = color(210, 40, 110);
float tx, ty;
float cx, cy;

void setup() {
  size(400, 400);
  cx = random(0, width);
  cy = random(0, height);
}

void draw() {
  //background(c);

  if (stage == 0) {
    //c = color(255, 0, 0);
    tx = random(0, width);
    ty = random(0, height);
    stage = 1;
  } else if (stage == 1) {
    //c = color(0, 255, 0);
    cx += (tx-cx)*.5;
    cy += (ty-cy)*.1;
    if (abs(tx-cx)<1) { // absolute value
      stage = 2;
    }
  } else if (stage == 2) {
    //c = color(0, 0, 255);
    counter ++;
    if (counter > 60) {
      stage = 0;
      counter = 0;
    }
  }
  rectMode(CENTER);
  rect(cx, cy, 50, 50);
}
