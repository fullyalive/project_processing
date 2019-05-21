import ddf.minim.*;
import ddf.minim.analysis.*;

Minim m;
AudioPlayer player;
FFT fft;

AudioInput in;

void setup() {
  size(800, 400);
  m = new Minim(this);
  player = m.loadFile("xxx.mp3", 1024);

  in = m.getLineIn();
  fft = new FFT (player.bufferSize(), player.sampleRate());
}

void draw() {
  
}
