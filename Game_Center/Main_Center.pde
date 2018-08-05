color c = color(255);
float a = 255;
float sx = 10;
float sy = 50;
boolean tool = true;

int m = 1;

int I = 0;

int s = 0;

int r = 10;

void toolbar() {
  sb(5, 10, -1, "Back", 100, 25, 16, false);
  fill(0, 148, 15);
  rect(10, 540, 580, 57, 5);
  // add 25
  cb(20, 550, 255);
  cb(45, 550, 0);
  cb(70, 550, color(255, 0, 0, a));
  cb(95, 550, color(0, 0, 255, a));
  cb(120, 550, color(0, 255, 0, a));
  cb(145, 550, color(0, 255, 255, a));
  cb(170, 550, color(255, 255, 0, a));
  sib(235, 550, 30, "Big");
  sib(345, 550, 10, "Normal");
  sib(455, 550, 5, "Small");
  sib(20, 550+26, 500, "Bigger");

  cb(195, 550, color(255, 0, 255, a));
  ab(215, 10, (255 / 2), "Half Alpha");
  ab(420, 10, 255, "Full Alpha");
}

void paint() {
  noStroke();

  fill(c);
  if (mousePressed) {

    ellipse(mouseX, mouseY, r, r);
  }
  if (tool) {
    toolbar();
  }
  sab(130, 550+26, "Save", "image.jpg");
}

void maze() {
  if (I == 0) {
    noStroke();
    bg(2);
    textFont(f);
    fill(255);
    textAlign(CENTER, CENTER);
    // textSize(64);
    text("Maze Runner", 300, 250);
    rmb(200, 300, 2, "Play");
    sb(200, 360, 1, "How to Play", true);
    sb(390, 520, 300, "Levels", true);
    sb(10, 520, -1, "End Game", false);
    score = 0;
  } else if (I == 1) {
    bg(1);
    sb(10, 10, 0, "Back", true);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("Stay on the white to survive\nUse the arrows to move.\nTry to get to the red circle", 300, 300);
  } else if (I == 2) {
    maze(m);
    escb(480, 10, 0, true);
  } else if (I == 300) {
    bg(3);
    sb(10, 10, 0, "Back", true);
    lb(200, 200, 1);
    lb(200, 260, 2);
    lb(200, 320, 3);
    lb(200, 380, 4);
  }
}