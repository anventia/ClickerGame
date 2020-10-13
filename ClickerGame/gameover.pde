
int fadeIn = 0;

void gameover() {
  introTheme.pause();
  introTheme.rewind();
  gameTheme.pause();
  gameTheme.rewind();
  
  strokeWeight(0);
  fill(230,230,230, 20);
  rect(400,400, 800,800);
  fadeIn += 1;
  
  if (fadeIn > 50) {
    gameoverScreen();
    fadeIn = 101;
  }
}

void gameoverScreen() {
  yOffset = -340+400-130+30;
  fill(introBGColor);
  rect(400,400, 800,800);
  strokeWeight(3);

  // Title
  stroke(introBGColor);
  fill(buttonColor);
  //tactileRect(400,380+yOffset, 370,80, 3);
  rect(400,380+yOffset, 370,80, 3);
  fill(0);
  textSize(50);
  text("You Lost!", 400,400+yOffset);
  
  // Play Again
  fill(buttonColor);
  tactileRect(400,455+yOffset, 370,50, 3);
  fill(0);
  textSize(30);
  text("Play Again", 400,465+yOffset);
  
  // Main Menu
  fill(buttonColor);
  tactileRect(400,515+yOffset, 370,50, 3);
  fill(0);
  textSize(30);
  text("Main Menu", 400,525+yOffset);
}

void gameoverClick() {
  // Play Again
  if (mouseX > 400-370/2 && mouseX < 400+370/2 && mouseY > 455+yOffset-50/2 && mouseY < 455+yOffset+50/2) {
    mode = GAME; 
  }
  
  // Main Menu
  if (mouseX > 400-370/2 && mouseX < 400+370/2 && mouseY > 515+yOffset-50/2 && mouseY < 515+yOffset+50/2) {
    mode = INTRO; 
  }
}
