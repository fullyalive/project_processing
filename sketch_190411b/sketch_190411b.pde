PImage [] images;
String name;
int frames = 5;
int index;
int count;

void setup() {
  size(600, 600);
  images = new PImage[frames];
  for (int i=0; i<5; i++) {
    images[i] = loadImage("test_" + i +".jpg");
  }
}

void draw() {
  count ++;
  if (count > 20) {
    index++;
    if (index >= frames) {
      index = 0;
    }
    count = 0;
  }
  //if (count % 30 = 0) {
  // index++;
  //    if (index >= frames) {
  //      index = 0;
  //    }
  //}
  image(images[index], 0, 0);
    println(index);
    println("--------");
}
