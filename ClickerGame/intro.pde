color buttonColor = 230;
int yOffset = -340+400-130;
boolean movement = true;

void intro() {
  gameTheme.pause();
  introTheme.play();
  
  // Background
  yOffset = (-340+400)-130;
  lineColor = #8BA7FA;
  background(introBGColor);
  backgroundAnimation();
  xSpeed = 0.5;
  ySpeed = 1;
  
  //
  stroke(introBGColor);
  strokeWeight(3);
  
  // Title
  fill(buttonColor);
  //tactileRect(400,380+yOffset, 370,80, 3);
  rect(400,380+yOffset, 370,80, 3);
  fill(0);
  textSize(50);
  text("Clicker Game", 400,400+yOffset);
  
  // Play
  fill(buttonColor);
  tactileRect(400,455+yOffset, 370,50, 3);
  fill(0);
  textSize(30);
  text("Play", 400,465+yOffset);
  
  // Highscores
  stroke(introBGColor);
  fill(buttonColor);
  rect(400,515+yOffset, 370,50, 3);
  fill(0);
  textSize(30);
  text("Highscore: "+highscore, 400,525+yOffset);
  
  // Options
  fill(buttonColor);
  tactileRect(400,575+yOffset, 370,50, 3);
  fill(0);
  textSize(30);
  text("Options", 400,585+yOffset);
  
  
}

void introClick() {
  // Play
  if (mouseX > 400-370/2 && mouseX < 400+370/2 && mouseY > 455+yOffset-50/2 && mouseY < 455+yOffset+50/2) {
    resetGame();
    mode = GAME;
  }
  
  // Options
  if (mouseX > 400-370/2 && mouseX < 400+370/2 && mouseY > 575+yOffset-50/2 && mouseY < 575+yOffset+50/2) {
    resetGame();
    targetXSpeed = 2;
    targetYSpeed = 3;
    mode = OPTIONS;
  }
}
