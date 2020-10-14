void pause() {
  // paused
  fill(buttonColor);
  stroke(introBGColor);
  //tactileRect(400,380+yOffset, 370,80, 3);
  rect(400,380, 370,80, 3);
  fill(0);
  textSize(50);
  text("Game Paused", 400,400);
  
  // play
  fill(buttonColor);
  stroke(200);
  strokeWeight(3);
  tactileRect(765,35, 50,50, 5);
  fill(100);
  stroke(100);
  //rect(758,35, 5,20);
  //rect(772,35, 5,20);
  triangle(756,45, 756,25, 774,35);
}

void pauseClick() {
  if (mouseX > 740 && mouseX < 790 && mouseY > 10 && mouseY < 60) {  // Pause
  gameTheme.play();
    mode = GAME;
  }
}
