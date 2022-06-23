//this is where its a little new*
ArrayList<GameObject> objects;

PImage img, star,boom, med,shippy;

int n;
color darkpurple = #1C0221;
color purple = #7B5E7B;
color grey = #938274;
color yellow = #E9EB87;
color green = #B9F18C;

int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
boolean up, down, left, right, space;
Ship player1;


void setup() {
  strokeWeight(5);
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  noStroke();
  rectMode(CENTER);
  img = loadImage("galaga.png");
  star = loadImage("star.png");
  boom = loadImage("boom.png");
  med = loadImage("med.png");
  shippy = loadImage("shippy.png");
  
  //initial
  up = false;
  down = false;
  left = false;
  right = false;
  space = false;
  n = 50;
  
  //class stuff
objects = new ArrayList <GameObject> ();
player1 = new Ship();
objects.add(player1);

}

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameover();
  else if (mode == OPTIONS)  options();
  else println("Error: Mode = " + mode);
 }
  
  
