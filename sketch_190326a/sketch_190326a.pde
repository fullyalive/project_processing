int stage = 0;
int counter = 0;
color c = color(210, 40, 110);

void setup() {
  size(400, 400);
}

void draw() {
  background(c);

  if (stage == 0) {
    c = color(255, 0, 0);
    counter ++;
    if (counter > 60) {
      stage = 1;
      counter = 0;
    }
  } else if (stage == 1) {
    c = color(0, 255, 0);
    counter ++;
    if (counter > 60) {
      stage = 2;
      counter = 0;
    }
  } else if (stage == 2) {
    c = color(0, 0, 255);
    counter ++;
    if (counter > 60) {
      stage = 0;
      counter = 0;
    }
  }
}
