void intro() {
  background(42,0,69);
  
  fill(255);
  textSize(0.12*height);
  text("P-O-N-G",width/2,height/3);
  
  buttons();
  fill(0);
  textSize(0.025*width);
  text("SOLO",0.375*width,0.666*height);
  text("DUEL",0.625*width,0.666*height);
}

void introClick() {
  //SOLO mode ====================================================================================================================================
  if (mouseX > 0.375*width-0.09375*width && mouseX < 0.46875*width && mouseY > 0.666*height-0.0625*height && mouseY < 0.7285*height) {
    mode = GAME;  
    playMode = solo;
  }
  //DUEL mode ====================================================================================================================================
  if (mouseX > 0.625*width-0.09375*width && mouseX < (0.625+0.09375)*width && mouseY > (0.666-0.0625)*height && mouseY < (0.666+0.0625)*height) {
    mode = GAME;
    playMode = duel;
  }
}

void buttons() {
  strokeWeight(3);
  
  if (mouseX > 0.375*width-0.09375*width && mouseX < 0.46875*width && mouseY > 0.666*height-0.0625*height && mouseY < 0.7285*height) {
    stroke(255,0,0);
    fill(225,32,229);
  } else {
    stroke(0);
    fill(255);
  }
  rect(0.375*width,0.666*height,0.1875*width,0.125*height);
  
  if (mouseX > 0.625*width-0.09375*width && mouseX < (0.625+0.09375)*width && mouseY > (0.666-0.0625)*height && mouseY < (0.666+0.0625)*height) {
    stroke(255,0,0);
    fill(225,32,229);
  } else {
    stroke(0);
    fill(255);
  }  
  rect(0.625*width,0.666*height,0.1875*width,0.125*height);
}
