PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage imgb;
PFont f;

void setup() {
  size(600,600);
  //fullScreen();
  background(200);
  img = loadImage("MW.jpg");
  img2 = loadImage("SW.jpg");
  img3 = loadImage("EE.jpg");
  img4 = loadImage("SPACE.jpg");
  imgb = loadImage("black.jpg");
  f = createFont("times", 64);
};

void draw() {
 textFont(f);
 Scenes();
};