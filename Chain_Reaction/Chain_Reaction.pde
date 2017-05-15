Ball[] balls;

//global boolean: triggered or not??
boolean rxnStarted;
Ball bigBall;

//tasks to perform once, upon launch
void setup() {
  size(600, 600);
  rxnStarted = false; //state vars much?
  balls = new Ball[25];
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
  bigBall = new Ball();
}

void draw() {
  background(0);

  for (int x = 0; x < balls.length; x++) {
    noStroke();
    fill(balls[x].c);
    ellipse(balls[x].x, balls[x].y, balls[x].rad*2, balls[x].rad*2);
    balls[x].move();
  }
  if (rxnStarted) {
    noStroke();
    fill(bigBall.c);
    ellipse(bigBall.x, bigBall.y, bigBall.rad*2, bigBall.rad*2);
    if(bigBall.rad <= 50 && bigBall.state == 1){
       bigBall.getBig(); 
    }
    else if(bigBall.rad > 0){
        bigBall.state = 2;
        bigBall.getSmall();
    }      
  }
}


void mouseClicked() {
  if (!rxnStarted) {
    bigBall.x = mouseX;
    bigBall.y = mouseY;
    bigBall.dx = 0;
    bigBall.dy = 0;
    bigBall.state = 1;

    rxnStarted = true;
  }
}