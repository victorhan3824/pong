// Pong

//mode framework ============================================
int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;

//game variables ===========================================
float leftX, leftY, leftD, rightX, rightY, rightD; //paddles
float ballX, ballY, ballD; //balllllllllll

//keyboard variables =======================================
boolean wKey, sKey, upKey, downKey;

//functions ================================================
void setup() {
  size(800,600);
  mode = GAME;
  
  //initalize paddles =======================================
  leftX = 0;
  leftY = height/2;
  leftD = 200;
  rightX = width;
  rightY = height/2;
  rightD = 200;
  
  //initalize ball ==========================================
  ballX = width/2;
  ballY = height/2;
  ballD = 100; 
  
  //initialize keyboard variables ===========================
  wKey = sKey = upKey = downKey = false;
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
