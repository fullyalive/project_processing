import processing.video.*;
Capture video;

int f = 4;

void setup() {
  size(640, 480);
  video = new Capture(this, width, height);
  video.start();
}

void draw() {
  background(255);
  if (video.available()) {
    video.read();
  }
  noStroke();
  //rectMode(CENTER);
  for (int j=0; j<video.height; j+=f) {
    for (int i=0; i<320+f; i+=f) {
      pushMatrix();
      translate(i, j);
      float dg = atan2(mouseY-j, mouseX-i);
      rotate(dg);
      int index = i+j*video.width;
      color c = video.pixels[index];
      fill(c);
      rect(0, 0, f, f);
      popMatrix();
    }
  }
  //for (int j=0; j < video.height; j+=f){
  //  for(int i=320; i>0; i-=f) {
  //    pushMatrix();
  //    translate(i+320, j);
  //    float dg = atan2(mouseY-j, mouseX-i);
  //    // rotate(dg);
  //    // rotate(random(-1, 1));
  //    int index = (320-i)+j*video.width;
  //  }
  //}
}
