float d;
void setup(){
size(400,400);
d=30;
}

void draw(){
background(255);
beginShape(LINES);
d=90*mouseX/width+10;
for(int i=0; i<360; i+=d){
float x = cos(TWO_PI*i/360)*100+200;
float y = sin(TWO_PI*i/360)*100+200;
vertex(x,y);
float x2 = cos(TWO_PI*(i+d)/360)*100+200;
float y2 = sin(TWO_PI*(i+d)/360)*100+200;
vertex(x2,y2);
}
endShape(CLOSE);

}
