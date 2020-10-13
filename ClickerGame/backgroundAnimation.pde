float x1 = 0;
float x2 = 100;
float x3 = 200;
float x4 = 300;
float x5 = 400;
float x6 = 500;
float x7 = 600;
float x8 = 700;

float y1 = 0;
float y2 = 100;
float y3 = 200;
float y4 = 300;
float y5 = 400;
float y6 = 500;
float y7 = 600;
float y8 = 700;

float xSpeed = 1;
float ySpeed = 1;

color lineColor = #8BA7FA;

void backgroundAnimation() {
  
  stroke(lineColor);
  strokeWeight(5);
  
  // Vertical
  line(x1,0, x1,800);
  line(x2,0, x2,800);
  line(x3,0, x3,800);
  line(x4,0, x4,800);
  line(x5,0, x5,800);
  line(x6,0, x6,800);
  line(x7,0, x7,800);
  line(x8,0, x8,800);
  
  // Horizontal
  line(0,y1, 800,y1);
  line(0,y2, 800,y2);
  line(0,y3, 800,y3);
  line(0,y4, 800,y4);
  line(0,y5, 800,y5);
  line(0,y6, 800,y6);
  line(0,y7, 800,y7);
  line(0,y8, 800,y8);
  
  if (movement == true) {
    x1 = x1 + xSpeed;
    if (x1 > 800) {
      x1 = 0;
    }
    if (x1 < 0) {
      x1 = 800;
    }
    
    x2 = x2 + xSpeed;
    if (x2 > 800) {
      x2 = 0;
    }
    if (x2 < 0) {
      x2 = 800;
    }
    
    x3 = x3 + xSpeed;
    if (x3 > 800) {
      x3 = 0;
    }
    if (x3 < 0) {
      x3 = 800;
    }
    
    x4 = x4 + xSpeed;
    if (x4 > 800) {
      x4 = 0;
    }
    if (x4 < 0) {
      x4 = 800;
    }
    
    x5 = x5 + xSpeed;
    if (x5 > 800) {
      x5 = 0;
    }
    if (x5 < 0) {
      x5 = 800;
    }
    
    x6 = x6 + xSpeed;
    if (x6 > 800) {
      x6 = 0;
    }
    if (x6 < 0) {
      x6 = 800;
    }
    
    x7 = x7 + xSpeed;
    if (x7 > 800) {
      x7 = 0;
    }
    if (x7 < 0) {
      x7 = 800;
    }
    
    x8 = x8 + xSpeed;
    if (x8 > 800) {
      x8 = 0;
    }
    if (x8 < 0) {
      x8 = 800;
    }
    
      //
      
    y1 = y1 + ySpeed;
    if (y1 > 800) {
      y1 = 0;
    }
    if (y1 < 0) {
      y1 = 800;
    }
    
    y2 = y2 + ySpeed;
    if (y2 > 800) {
      y2 = 0;
    }
    if (y2 < 0) {
      y2 = 800;
    }
    
    y3 = y3 + ySpeed;
    if (y3 > 800) {
      y3 = 0;
    }
    if (y3 < 0) {
      y3 = 800;
    }
    
    y4 = y4 + ySpeed;
    if (y4 > 800) {
      y4 = 0;
    }
    if (y4 < 0) {
      y4 = 800;
    }
    
    y5 = y5 + ySpeed;
    if (y5 > 800) {
      y5 = 0;
    }
    if (y5 < 0) {
      y5 = 800;
    }
   
    y6 = y6 + ySpeed;
    if (y6 > 800) {
      y6 = 0;
    }
    if (y6 < 0) {
      y6 = 800;
    }
    
    y7 = y7 + ySpeed;
    if (y7 > 800) {
      y7 = 0;
    }
    if (y7 < 0) {
      y7 = 800;
    }
    
    y8 = y8 + ySpeed;
    if (y8 > 800) {
      y8 = 0;
    }
    if (y8 < 0) {
      y8 = 800;
    }
  }
}
