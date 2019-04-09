int face;
int n;
color colorA = color(255, 0, 0);
color colorB = color(0, 0, 255);
color colorC = color(0, 255, 0);
color colorD = color(0, 255, 100);


void setup() {
  size(400, 400);
  n = 200;
  face = width/n;
}

void draw() {
  noStroke();
  background(200);

  for (int i=0; i< n; i++) {
    for (int j=0; j< n; j++) {
      float v = 1.0*i/n;
      color a = lerpColor(colorA, colorC, v);
      fill(a);
      rect(i*face, j*face, face, face);
    }
  }
}
