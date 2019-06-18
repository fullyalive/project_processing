int numberFrames = 120;
int margin=15;
int border=300;
int max_distance=200;
float ts;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(255);
  stroke(50,50,50);
  int currentX=0;
  
  for (int x=border; x<width-border; x+=margin) {
    
    int currentY=0;
    int number=(int) sq((height-2*border)/margin);
    
    for (int y=border; y<height-border; y+=margin) {
      
      float offSet=(2*PI/number*currentX*currentY);
      float distance=dist(0, 20, x, y);
      float max=map(distance, 0, sqrt(sq(width)+sq(height))*2, 0, max_distance);

      pushMatrix();
      translate(x, y, height/8);
      float d=map(cos(ts+offSet), -1, 1, max, 15);  
      float x1=-tan(ts)*d;
      float y1=cos(ts)*d;
      line(0, 0, x1, y1);
      popMatrix();
      currentY++;
    }
    currentX++;
  }
  ts -= PI/numberFrames;
}
