Ball[] balls;

//global boolean: triggered or not??
boolean rxnStarted;

//tasks to perform once, upon launch
void setup() {
  size(600, 600);
  rxnStarted = false; //state vars much?
  balls = new Ball[25];
  for (int i = 0; i < balls.length; i++) {
     balls[i] = new Ball();
     //...
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < balls.length; i++) {
    //??? 
  }
  
   myBall.move(mouseClicked());
}

void mouseClicked() {
   if (!rxnStarted) {
      balls[0]; 
   }
}