int [] numbers;

void setup() {
  size(400, 400, P3D);
  numbers = new int[100];
  for (int i=0; i <numbers.length; i++) {
    int r = int(floor(random(0, 2)));
    numbers[i] = r;
  }
}

void draw() {
  //update your data
  for (int i=0; i<numbers.length; i++) {
    numbers[i] = numbers[i+1];
  }
  numbers[numbers.length - 1] = int(floor(random(0,3)));
  
  //convert i to two d array;
  for (int i=0; i<numbers.length; i++) {
    if (numbers[i] == 0) {
      line(x, y, x+40, y+40)
    } else if (numbers[i] == 1) {
      line(x, y, x-40, y-40);
    } else if (numbers[i] == 2) {
      line(x, y, x-40, y+40);
    }
  }
}
