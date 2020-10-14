int targetSize = 100;

float targetX;
float targetY;

float targetXSpeed;
float targetYSpeed;

int score;
int lives;


void game() {
  introTheme.pause();
  gameTheme.play();
  background(introBGColor);

  // Target
  fill(red,green,blue);
  stroke(red,green,blue);
  strokeWeight(1);
  circle(targetX,targetY, targetSize);
  
  // pause
  fill(buttonColor);
  stroke(200);
  strokeWeight(3);
  tactileRect(765,35, 50,50, 5);
  fill(100);
  stroke(100);
  rect(758,35, 5,20);
  rect(772,35, 5,20);
  
  // Lives
  textFont(MontserratMedium);
  fill(#95CBFA);
  textSize(25);
  text("Lives: "+lives,600,45);
  
  // Score
  fill(#95CBFA);
  textSize(25);
  text("Score: "+score,400,45);
  textFont(Montserrat);
  
  // Movement
  targetX += targetXSpeed;
  targetY += targetYSpeed;
  
  if (targetX > width-targetSize/2 || targetX < targetSize/2) {
    targetXSpeed = targetXSpeed * -1;
  }
  
  if (targetY > width-targetSize/2 || targetY < targetSize/2) {
    targetYSpeed = targetYSpeed * -1;
  }
}

void gameClick() {
  if (dist(mouseX,mouseY, targetX,targetY) < targetSize/2) {  // click on target
    score += 1;
    if (targetXSpeed > 0) {
      targetXSpeed += random(0.05,0.1);
    } else {
      targetXSpeed -= random(0.05,0.1);
    }
    if (targetYSpeed > 0) {
      targetYSpeed += random(0.05,0.1);
    } else {
      targetYSpeed -= random(0.05,0.1);
    }
  } else if (mouseX > 740 && mouseX < 790 && mouseY > 10 && mouseY < 60) {  // Pause
    gameTheme.pause();
    mode = PAUSE;
  } else {  // lose a life
    lives -= 1;
    if (lives == 0) {
      mode = GAMEOVER; 
      resetGame();
    }
  }
  

  
}

void resetGame() {
  targetX = 400;
  targetY = 400;

  targetXSpeed = 0.25;
  targetYSpeed = 1;

  score = 0;
  lives = 10;
}
