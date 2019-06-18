import processing.sound.*;

SoundFile bgm;

Slider ux, uy, uz;
float rot;
float upper_xrot = 0;
float upper_yrot = 0;
float upper_zrot = 0;
float x, z, vx, vz = 0, y = 430;
PShape megaphone;
PImage[] w1 = new PImage[250];
PImage[] w2 = new PImage[250];
PImage[] w3 = new PImage[250];
PImage[] w4 = new PImage[250];
PImage[] w5 = new PImage[250];

int random = floor(random(0, 6));

void setup() {
  fullScreen(P3D);
  smooth();

  bgm = new SoundFile(this, "bgm.mp3");
  bgm.loop();

  ux = new Slider("body x", 10, 10, -90, 0, color(102, 153, 204), color(153, 204, 255), 0);
  uy = new Slider("body y", 10, 30, -90, 90, color(102, 153, 204), color(153, 204, 255), 0);
  uz = new Slider("body z", 10, 50, -90, 0, color(102, 153, 204), color(153, 204, 255), 0);
  for (int i = 0; i < 250; i++) {
    if (i<10) {
      w1[i] = loadImage("./w1/frame_00"+i+"_delay-0.04s.gif");
      w2[i] = loadImage("./w2/frame_00"+i+"_delay-0.04s.gif");
      w3[i] = loadImage("./w3/frame_00"+i+"_delay-0.04s.gif");
      w4[i] = loadImage("./w4/frame_00"+i+"_delay-0.04s.gif");
      w5[i] = loadImage("./w5/frame_00"+i+"_delay-0.04s.gif");
    } else if (i< 100) {
      w1[i] = loadImage("./w1/frame_0"+i+"_delay-0.04s.gif");
      w2[i] = loadImage("./w2/frame_0"+i+"_delay-0.04s.gif");
      w3[i] = loadImage("./w3/frame_0"+i+"_delay-0.04s.gif");
      w4[i] = loadImage("./w4/frame_0"+i+"_delay-0.04s.gif");
      w5[i] = loadImage("./w5/frame_0"+i+"_delay-0.04s.gif");
    } else {
      w1[i] = loadImage("./w1/frame_"+i+"_delay-0.04s.gif");
      w2[i] = loadImage("./w2/frame_"+i+"_delay-0.04s.gif");
      w3[i] = loadImage("./w3/frame_"+i+"_delay-0.04s.gif");
      w4[i] = loadImage("./w4/frame_"+i+"_delay-0.04s.gif");
      w5[i] = loadImage("./w5/frame_"+i+"_delay-0.04s.gif");
    }
  }
  frameRate(25);
}


void draw() {
  background(255);
  lights();

  // GUI
  ux.display();
  uy.display();
  uz.display();

  upper_xrot = radians(ux.pos());
  upper_yrot = radians(uy.pos());
  upper_zrot = radians(uz.pos());

  // initial world setting   
  translate(width/2, height/2, 0);
  specular(color(0, 0, 1));

  float t = map(mouseY, 0, height, -400, 400);
  float f = map(mouseX, 0, width, -1000, 0);
  translate(0, f, 2*t);
  rotateX(radians(0));
  rotateY(rot);

  transformBody(upper_xrot, upper_yrot, upper_zrot);
  noStroke();
  fill(245, 242, 234); 

  float bx = 50;
  float by = 40;
  float bz = 40;
  float gap = 2;

  // 0
  for (int i=0; i<36; i++) {
    for (int j=0; j<10; j++) {
      box(0.4*bx, 0.1*by, 0.4*bz);
      rotateY(radians(36));
      translate(20, 0, 9);
    }
    translate(0, 0.1*by+gap, 0);
  }
  translate(0, 0.04*by, 1.1*bz);

  // 1
  for (int i=0; i<8; i++) {
    for (int j=0; j<10; j++) {
      rotateY(radians(-72));
      translate(0, 0, 70);
      image(w1[frameCount%250], -88, -12, 0.6*bx, 0.6*by); 
      translate(0, 0, -70);
      rotateY(radians(72));
      box(0.8*bx, 0.8*by, 0.8*bz);
      rotateY(radians(36));
      translate(45, 0, 15);
    }
    translate(0, 0.8*by+gap, 0);
  }
  translate(0, 0.08*by, 0.9*bz);

  // 2
  for (int i=0; i<4; i++) {
    for (int j=0; j<12; j++) {
      rotateY(radians(-60));
      translate(0, 0, 77);
      image(w2[frameCount%250], -116.5, -16, 0.8*bx, 0.8*by);
      translate(0, 0, -77);
      rotateY(radians(60));
      box(bx, by, bz);
      rotateY(radians(30));
      translate(56, 0, 15);
    }
    translate(0, by+gap, 0);
  }
  translate(0, 0.1*by, 0.7*bz);

  // 3
  for (int i=0; i<4; i++) {
    for (int j=0; j<15; j++) {
      rotateY(radians(-48));
      translate(0, 0, 66);
      image(w3[frameCount%250], -122, -16, 0.8*bx, 0.8*by);
      translate(0, 0, -66);
      rotateY(radians(48));
      box(bx, by, bz);
      rotateY(radians(24));
      translate(56, 0, 12);
    }
    translate(0, by+gap, 0);
  }
  translate(0, 0.1*by, 0.7*bz);

  // 4
  for (int i=0; i<4; i++) {
    for (int j=0; j<18; j++) {
      rotateY(radians(-40));
      translate(0, 0, 59);
      image(w4[frameCount%250], -125, -16, 0.8*bx, 0.8*by);
      translate(0, 0, -59);
      rotateY(radians(40));
      box(bx, by, bz);
      rotateY(radians(20));
      translate(56, 0, 10);
    }
    translate(0, by+gap, 0);
  }
  translate(0, 0.01*by, 1.35*bz);

  // 5
  for (int i=0; i<2; i++) {
    for (int j=0; j<24; j++) {
      rotateY(radians(-30));
      translate(0, 0, 51);
      image(w5[frameCount%250], -128, -16, 0.8*bx, 0.8*by);
      translate(0, 0, -51);
      rotateY(radians(30));
      box(bx, by, bz);
      rotateY(radians(15));
      translate(56, 0, 7);
    }
    translate(0, by+gap, 0);
  }
  rot += 0.01;
}

void transformBody(float xrot, float yrot, float zrot) {
  rotateX(xrot);
  rotateY(yrot);
  rotateZ(zrot);
}

void mouseDragged() {
  ux.slide();
  uy.slide();
  uz.slide();
}
