void setup() {
  size(400, 400);
}

void draw() {
  background(200);

  for (int i=0; i< 400; i+=80) {
    for (int j=0; j< 400; j+=80) {
      rect(i, j, 80, 80);
    }
  }
}
