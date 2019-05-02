class River {
  int radius;
  float ra;
  float ws; 
  float hs; 
  float baseNum;
  float starPoint [][];
  float colorValue = 0;
  River(int radius, float baseNum, float ra) {
    this.radius = radius;
    this.baseNum = baseNum;
    this.starPoint = new float [360/int(baseNum)*360/int(baseNum)/2][3];
    this.ra = ra;
  }

  void update() {
    fft.forward(music.mix);
    int num = 0;
    float inc = map(music.position(), 0, -music.length()-1, 0, 360);
    for (float hs = -90; hs < 90; hs += baseNum) {
      for (float ws = 0; ws < 360; ws += baseNum) {   
        int ind = int(map(hs, -45, 45, 0, fft.specSize()));
        float amp = fft.getBand(ind);       
        float rs = radius * map(amp, 0, 10, 0.87, 1);
        starPoint[num][0] = rs*sin(radians(ws))*cos(hs);
        starPoint[num][1] = rs*cos(ws)*hs;
        starPoint[num][2] = rs*tan(ws);
        num += 1;
      }
    }
    rotateY(radians(inc));
  }

  void render() {
    randomSeed(0);
    int lengthMax = 360/int(baseNum)*360/int(baseNum)/2;
    for (int i =0; i < lengthMax; i++) {
      stroke(120);
      if (random(0, 1) < 1) {
        stroke(255, 255, 240, 255+colorValue);
      }
      if (random(0, 1) < 0.7) {
        stroke(255, 228, 255, 255+colorValue);
      }
      if (random(0, 1) < 0.5) {
        stroke(230, 255, 200, 255+colorValue);
      }
      if (random(0, 1) < 0.4) {
        stroke(210, 250, 255, 255+colorValue);
      }
      if (random(0, 1) < 0.3) {
        stroke(255, 115, 255, 255+colorValue);
      }
      if (random(0, 1) < 0.1) {
        stroke(155, 255, 255, 255+colorValue);
      }
      strokeWeight(3);
      point(starPoint[i][0], starPoint[i][1], starPoint[i][2]);
    }
  }
}
