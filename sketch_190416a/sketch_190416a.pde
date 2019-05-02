import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.analysis.FFT;
import processing.sound.*;

Minim minim;
AudioPlayer music;
FFT fft;
River river;

// create stars
Star[] stars = new Star[200];

float speed;
float deg;
float addValue;
float xz = 0;
float zx = 0;
float z = map(mouseY, 0, height, 0, 1600); // dynamic Z-position
boolean clicked = false;

void setup() {
  fullScreen(P3D);

  // music setup
  minim = new Minim(this);
  music = minim.loadFile("bohemian.mp3");
  music.loop();
  fft = new FFT(music.bufferSize(), music.sampleRate());

  // star setup
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  // river setup
  river = new River(200, 5, 0);
}

void draw() {
  background(0);
  speed = map(mouseY, 0, height, 0, 30);
  deg = deg + addValue;

  translate(width/2, height/2);
  rotateZ(radians(deg));

  if (!clicked) {
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  }
  if (speed < 5) {
    addValue = 0.03;
    float z = map(mouseY, 0, height, 0, 3000); // dynamic Z-position
    translate(0, 0, -z);
    rotateX(radians(90));
    rotateY(radians(90));
    river.update();
    river.render();
  }


  if (speed > 5) {
    addValue = 0.08;
    translate(-width/2, -height/2);
    for (int i = 0; i < 10; i++) {
      float randomPValue1 = random(-15, 15);
      float randomPValue2 = random(-15, 15);
      float randomRValue = random(0, 3);
      float randomColorValue1 = random(100, 255);
      float randomColorValue2 = random(200, 255);
      float randomColorValue3 = random(0, 255);
      fill(randomColorValue1, randomColorValue2, randomColorValue3);
      ellipse(width/2 + randomPValue1, height/2 + randomPValue2, randomRValue, randomRValue);
    }
  }
  println(addValue);
}

void mousePressed() {
  if (music.isPlaying()) {
    music.pause();
    clicked = true;
  } else {
    music.loop();
    clicked = false;
  }
}
