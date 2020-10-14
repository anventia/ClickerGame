float red = 149;
float green = 250;
float blue = 195;

boolean clickRed = false;
boolean clickGreen = false;
boolean clickBlue = false;

boolean clickSize = false;

float redX = map(red, 0,255, 240,500);
float greenX = map(green, 0,255, 240,500);
float blueX = map(blue, 0,255, 240,500);

float sizeX = map(targetSize, 50,150, 240,500);


void options() {
  yOffset = (-340+400)-190;
  //lineColor = #5DC96B;
  background(introBGColor);
  //backgroundAnimation();
  
  // Target
  fill(red,green,blue);
  stroke(red,green,blue);
  strokeWeight(1);
  circle(targetX,targetY, targetSize);
  
  targetX += targetXSpeed;
  targetY += targetYSpeed;
  
  if (targetX > width-targetSize/2 || targetX < targetSize/2) {
    targetXSpeed = targetXSpeed * -1;
  }
  
  if (targetY > width-targetSize/2 || targetY < targetSize/2) {
    targetYSpeed = targetYSpeed * -1;
  }
    
  // Title
  strokeWeight(5);
  stroke(introBGColor);
  fill(buttonColor);
  //tactileRect(400,380+yOffset, 370,80, 3);
  rect(400,380+yOffset, 370,80, 3);
  fill(0);
  textSize(50);
  text("Options", 400,400+yOffset);
  
  // Red slider
  stroke(introBGColor);
  fill(buttonColor);
  rect(370,455+yOffset, 310,50, 3);
  stroke(100);
  line(240,455+yOffset, 500,455+yOffset);
  stroke(map(redX, 240,500, 0,255),0,0);
  strokeWeight(10);
  circle(redX,455+yOffset, 10);
  strokeWeight(3);
  if (clickRed == true) {
    if (mouseX < 240) {
      redX = 240;
    } else if (mouseX > 500) {
      redX = 500;
    } else {
      redX = mouseX;
    }
  }
  
  // Green slider
  strokeWeight(5);
  stroke(introBGColor);
  fill(buttonColor);
  rect(370,515+yOffset, 310,50, 3);
  stroke(100);
  line(240,515+yOffset, 500,515+yOffset);
  stroke(0,map(greenX, 240,500, 0,255),0);
  strokeWeight(10);
  circle(greenX,515+yOffset, 10);
  strokeWeight(3);
  if (clickGreen == true) {
    if (mouseX < 240) {
      greenX = 240;
    } else if (mouseX > 500) {
      greenX = 500;
    } else {
      greenX = mouseX;
    }
  }
  
  // Blue slider
  strokeWeight(5);
  stroke(introBGColor);
  fill(buttonColor);
  rect(370,575+yOffset, 310,50, 3);
  stroke(100);
  line(240,575+yOffset, 500,575+yOffset);
  stroke(0,0,map(blueX, 240,500, 0,255));
  strokeWeight(10);
  circle(blueX,575+yOffset, 10);
  strokeWeight(3);
  if (clickBlue == true) {
    if (mouseX < 240) {
      blueX = 240;
    } else if (mouseX > 500) {
      blueX = 500;
    } else {
      blueX = mouseX;
    }
  }
  
  // Size slider
  strokeWeight(5);
  stroke(introBGColor);
  fill(buttonColor);
  rect(370,635+yOffset, 310,50, 3);
  stroke(100);
  line(240,635+yOffset, 500,635+yOffset);
  stroke(30);
  strokeWeight(10);
  circle(sizeX,635+yOffset, 10);
  strokeWeight(3);
  if (clickSize == true) {
    if (mouseX < 240) {
      sizeX = 240;
    } else if (mouseX > 500) {
      sizeX = 500;
    } else {
      sizeX = mouseX;
    }
  }
  
  // Output
  red = map(redX, 240,500, 0,255);
  green = map(greenX, 240,500, 0,255);
  blue = map(blueX, 240,500, 0,255);
  stroke(introBGColor);
  fill(red, green, blue);
  rect(560,515+yOffset, 50,170, 3);
  
  targetSize = round(map(sizeX, 240,500, 50,150));
  stroke(introBGColor);
  fill(buttonColor);
  rect(560,635+yOffset, 50,50, 3);
  textSize(25);
  fill(0);
  text(targetSize, 560,642+yOffset);
  
  // Back
  fill(buttonColor);
  tactileRect(400,695+yOffset, 370,50, 3);
  fill(0);
  textSize(30);
  text("Back", 400,705+yOffset);

}

void optionsPressed() {  // Pressed
  if (mouseX > 240-10 && mouseX < 500+10 && mouseY > 455+yOffset-10 && mouseY < 455+yOffset+10) {
    clickRed = true;
  }
  
  if (mouseX > 240-10 && mouseX < 500+10 && mouseY > 515+yOffset-10 && mouseY < 515+yOffset+10) {
    clickGreen = true;
  }
  
  if (mouseX > 240-10 && mouseX < 500+10 && mouseY > 575+yOffset-10 && mouseY < 575+yOffset+10) {
    clickBlue = true;
  }
  
  if (mouseX > 240-10 && mouseX < 500+10 && mouseY > 635+yOffset-10 && mouseY < 635+yOffset+10) {
    clickSize = true;
  }
  
}

void optionsClick() {  // Released
  clickRed = false;
  clickGreen = false;
  clickBlue = false;
  clickSize = false;
  
  if (mouseX > 400-370/2 && mouseX < 400+370/2 && mouseY > 695+yOffset-50/2 && mouseY < 695+yOffset+50/2) {
    mode = INTRO;
  }
}
