float [] xpos;
float [] ypos;

float tx, ty;
int stage=0;

void setup() {
  size(800, 800);
  xpos = new float[30];
  ypos = new float[30]; 
  for (int i =0; i<xpos.length; i++) {
    xpos[i] = width*0.5;
    ypos[i]= height*0.5;
  }
}

void draw() {
  background(0);
  noStroke();
  if (stage==0) {
    tx=random(400);
    ty=random(400);
    stage=1;
  } else if (stage==1) {
    xpos[xpos.length-1] += (tx- xpos[xpos.length-1])*0.1;
    ypos[ypos.length-1] += (ty- ypos[xpos.length-1])*0.1;

    for (int i=0; i<xpos.length-1; i++) { 
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    } 
    if (abs(tx-xpos[xpos.length-1])<1) {
      stage=0;
    };
  }
  // information update
  // draw all the circles at once
  for (int i = 0; i<xpos.length; i++) {
    fill(255*i/xpos.length, 255, 255, 255*i/xpos.length);
    ellipse(xpos[i], ypos[i], i*2, i*2);
  }
}
