class box {
  float x, y, w, h;
  color c;
  float s;
  box (float _x, float _y, float _w, float _h, color _c, float _s) {
    x= _x;
    y= _y;
    w= _w;
    h= _h;
    c= _c;
    s= _s;
  }

  void draw() {
    fill(c);
    rect(x, y, w, h);
    x += s;
  }
}
