void game() {
  background(69);
  
  //paddles =======================================================
  fill(255);
  circle(leftX,leftY,pD);
  circle(rightX,rightY,pD);
  
  //move paddles and ball =========================================
  if (timer < 0) {
    if (wKey == true && leftY >= 0) leftY = leftY - 5;
    if (sKey == true && leftY <= height) leftY = leftY + 5;
    if (upKey == true && rightY >= 0) rightY = rightY - 5;
    if (downKey == true && rightY <= height) rightY = rightY + 5;
    ballX = ballX + vx; 
    ballY = ballY + vy;
  }
  
  display();
  bounceAway();
  scoreDetermine();
  //gameover ======================================================
  if (leftScore == 5 || rightScore == 5) mode = GAMEOVER;
}

void gameClick() {
  
}

//custom functions when mode = GAME ======================

void display() {
  //ball display ==========================================
  fill(255,0,0);
  circle(ballX, ballY, bD);
  //display score board ===================================
  fill(255);
  textSize(28);
  text("Left score: " + leftScore, width/4,height/12);
  text("Right score: " + rightScore, width*0.75,height/12);
  timer = timer - 1; //timing control
}

void bounceAway() {
  //check collision and ball bouncing away from the paddle=
  if (dist(leftX,leftY,ballX,ballY) <= pD/2 + bD/2) { 
    vx = (ballX - leftX)/10;
    vy = (ballY - leftY)/10;
  }
   if (dist(rightX,rightY,ballX,ballY) <= pD/2 + bD/2) { 
    vx = (ballX - rightX)/10;
    vy = (ballY - rightY)/10;
  }
  //bounce off the walls ===================================
  if (ballY < bD/2 || ballY > height-bD/2 ) vy = vy * -1;
}

void scoreDetermine() {
  //determining scoring =====================================
  if (ballX <= 0) {
    rightScore = rightScore + 1;
    roundReset();
    timer = 50;
  }  
  if (ballX >= width) {
    leftScore = leftScore + 1;
    roundReset();
    timer = 50;
  }
}
