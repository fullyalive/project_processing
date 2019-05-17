box b;
box [] bs;

void setup() {
  size(400, 400);
  bs = new box[100];

  for (int i=0; i<bs.length; i++) {
    bs[i] = new box(random(width), random(height), random(10, 50), random(10, 50), 
    color(random(0, 255), random(0, 255), random(0, 255)), random(0,20));
  }
}

void draw() {
  background(255);
  for (int i=0; i<bs.length; i++) {
    bs[i].draw();
  }
  //b.draw();
}
