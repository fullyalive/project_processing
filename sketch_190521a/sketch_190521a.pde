import ddf.minim.*;
import ddf.minim.analysis.*;

Minim m;
AudioPlayer player;
FFT fft;

AudioInput in;

void setup() {
  size(800, 400);
  m = new Minim(this);
  player = m.loadFile("bohemian.mp3", 1024);

  in = m.getLineIn();
  fft = new FFT (player.bufferSize(), player.sampleRate());
}

void draw() {
  background(0);
  fft.forward(in.mix);
  float f = 1.0*width/fft.specSize();
  fill(255);
  for (int i = 0; i <fft.specSize(); i++) {
    float h = fft.getBand(i)*100;
    rect(i*f, height*0.5-(h*0.5+10), f, h+10);
  }
}

void stop() {
  // always close Minim audio classes when you are done with them
  in.close();
  m.stop();
}
