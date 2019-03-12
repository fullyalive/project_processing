float d ; 
void setup(){
size(600, 400);
}

void draw(){
//background(255,0,0);
noStroke();
rectMode(CORNER);
fill(255,10);
rect(0,0,width,height);

d = dist(pmouseX, pmouseY, mouseX, mouseY);

fill(0,0,255);
strokeWeight(10);
stroke(random(255),random(255),0);
rectMode(CENTER);
rect(mouseX,mouseY,d,d);

}
