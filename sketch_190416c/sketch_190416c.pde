PImage p;

void setup() {
  size(550, 366);
  p = loadImage("test.jpg");
  println(p.width, p.height);
}

void draw() {
  background(p);
  for (int i = 0; i < height; i+=2) {
    for (int j = 0; j < width; j+=2) {
      int index = j + width*i;
      color c = p.pixels[index];
      noStroke();
  
      //black or white color translation
      float b = brightness(c);
      if (b > 100) {
        fill(255);
      } else {
        fill(0);
      }
      
      //fill(c);
      rect(j, i, 2, 2);
    }
  }
}
