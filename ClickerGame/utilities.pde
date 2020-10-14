void tactileRect(int x, int y, int w, int h, int r) {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    stroke(#B3B4B7);
  } else {
    stroke(introBGColor);
  }
  rect(x,y, w,h, r);
}
