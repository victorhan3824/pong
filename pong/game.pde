void game() {
  background(69);
  
  //paddles
  circle(leftX,leftY,leftD);
  circle(rightX,rightY,rightD);
  
  //move paddles
  if (wKey == true) leftY = leftY - 5;
  if (sKey == true) leftY = leftY + 5;
  if (upKey == true) rightY = rightY - 5;
  if (downKey == true) rightY = rightY + 5;
  
  //ball
  circle(ballX, ballY, ballD);
}

void gameClick() {
  
}
