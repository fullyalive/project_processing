class Slider {
  String name;
  int x, y; // position
  int w, h; // width and height
  float min, max;
  float pos; // current value
  color baseCol; 
  color highlightCol;

  float pos() { 
    return pos;
  }

  void setPos(float p) {
    pos = p;
  }

  Slider(String s, int xp, int yp, float mi, float ma, color bc, color hc, float dpos) {
    name = s; // name
    x=xp; // x position 
    y=yp; // y position
    w = 100; // slide width
    h = 15; // slide height
    min = mi; // min
    max = ma; // max
    baseCol = bc; // base color
    highlightCol = hc; // highlight color
    pos = dpos; // default position
  }

  void slide() {
    if ((mouseX >=x ) && (mouseX <= x+w) && 
      (mouseY >= y) && (mouseY <= y+h) ) {
      pos = map(mouseX, x, x+w, min, max);
    }
  }

  void display() {
    fill(baseCol);
    noStroke();
    rect(x, y, w, h); 
    fill(highlightCol);
    rect(x, y, map(pos, min, max, 0, w), h);

    textSize(10);
    fill(1);
    text(name, x + w + 3, y+h-3);
    text(nf(pos, 0, 0), x + 5, y + h -3);
  }
}
