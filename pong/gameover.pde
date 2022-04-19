//aflqv
///bgmrw
////chnsx
/////djoty
//////ekpuz

void gameover() {
  textSize(72);
  fill(255,0,0);
  if (leftScore == 5)   text("Left WIN!",width/2,height/2);
  if (rightScore == 5) text("Right WIN!",width/2,height/2);
}

void gameoverClick() {
  mode = INTRO;
  rightScore = leftScore = 0;
}
