// Pong

//mode framework ============================================
int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;

//game variables ===========================================
float leftX, leftY, pD, rightX, rightY; //paddles
float ballX, ballY, bD; //balllllllllll
float vx, vy; // determining the ball's movement
int leftScore, rightScore, timer;

//keyboard variables =======================================
boolean wKey, sKey, upKey, downKey;

//functions ================================================
void setup() {
  size(800,600);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  
  //initalize paddles =======================================
  leftX = 0;
  leftY = height/2;
  pD = 200;
  rightX = width;
  rightY = height/2;
  
  //initalize ball ==========================================
  ballX = width/2;
  ballY = height/2;
  bD = 60; 
  vx = random(-3,3);
  vy = random(-3,3);
  
  //initialize keyboard variables ===========================
  wKey = sKey = upKey = downKey = false;
  
  //initializing score ======================================
  leftScore = rightScore = 0;
  timer = 50;
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

void roundReset() {
  ballX = width/2;
  ballY = height/2;
  
  vx = random(-5,5);
  vy = 5-vx;
  
  leftX = 0;
  leftY = height/2;

  rightX = width;
  rightY = height/2;  
}
