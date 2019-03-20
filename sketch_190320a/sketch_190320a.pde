int x=0;
int y=0;
int vx=1;
int vy=1;

void setup(){
  size(400,400);
}

void draw(){
  fill(255,3);
  rect(0,0,width,height);
  //background(255);
  fill(255*x/width, 255*y/height,random(255));
  rect(x,y,random(50),random(50)); // 넓이와 높이를 랜덤지정
  
  x+=random(3,100)*vx; // x 이동간격을 랜덤 이동
  y+=random(5,8)*vy; // y 이동간격을 랜덤 이동

  if((x > width) ||(x < 0)) {
    vx=vx*-1;
  };
  if((y > height) ||(y < 0)) {
    vy=vy*-1;
  };
}
