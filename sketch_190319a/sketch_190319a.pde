int x, y = 0;
int v1 = 1;
int v2 = 1;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  rect(x, y, 50, 50);
  x+=5*v1;
  y+=4*v2;
  
  if((x>width-50)||(x<0)) {
    v1 = v1*-1;
  };  
  
  if((y>height-50)||(y<0)) {
    v2 = v2*-1;
  }
  println(v1);
}
