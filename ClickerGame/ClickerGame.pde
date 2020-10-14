import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer introTheme;
AudioPlayer gameTheme;
AudioPlayer click;


int mode;
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

PFont Montserrat;
PFont MontserratMedium;

color introBGColor = 240;

void setup() {
  size(800, 800);
  mode = INTRO;
  Montserrat = createFont("Montserrat-Regular.ttf", 100);
  MontserratMedium = createFont("Montserrat-Medium.ttf", 100);
  minim = new Minim(this);
  introTheme = minim.loadFile("Crew.mp3");
  gameTheme = minim.loadFile("Tetris.mp3");
  click = minim.loadFile("click.mp3");
  textFont(Montserrat);
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else { 
    println("404: Mode '" + mode + "' not found");
  }    
}
