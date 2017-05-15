class Ball {
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;
  float r;
  float g;
  float b;

  Ball() {
    r = random(256);
    g = random(256);
    b = random(256);
    c = color(r, g, b);
    rad = 10; 
    x = random((width-rad) + rad/2);
    y = random((height-rad) + rad/2);
    dx = random(10) - 5;
    dy = random(10) - 5;
    state = 0;
  }

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }

  void bounce() {
    if (x + dx > width) {
      dx = -dx;
    } 
    if (y + dy > height) { 
      dy = -dy;
    }
    if (x + dx < 0) {
      dx = -dx;
    }
    if (y + dy < 0) {
      dy = -dy;
    }
  }

  void getBig() {
    if (state == 1) {
      dx = 0;
      dy = 0;
      rad = rad + 1;
    }
  }

  void getSmall() {
    rad = rad - 1;
  }
}