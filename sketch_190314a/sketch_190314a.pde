int a = 50;
float b;
int x = 0;

void setup() {
  size(400, 400);
}

void draw() {
  b = 255*mouseX/width;
  background(b);
  x=constrain(x, 0, width-a);
  rect(x, 100, a, a);
  x++;
}
