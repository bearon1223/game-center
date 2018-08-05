int mx = 10;
int my = 10;
int ms = 1;

void resetm() {
  mx = 10;
  my = 10;
  score = 0;
}

void player() {
  if (keyCode == UP && keyPressed) {
    my -= ms;
  }
  if (keyCode == DOWN && keyPressed) {
    my += ms;
  }
  if (keyCode == LEFT && keyPressed) {
    mx -= ms;
  }
  if (keyCode == RIGHT && keyPressed) {
    mx += ms;
  }

  color p1 = get(mx, my);
  color p2 = get(mx+10, my);
  color p3 = get(mx, my+10);
  color p4 = get(mx+10, my+10);
  color pc = get(mx+5, my+5);
  fill(100);
  rect(mx, my, 10, 10);
  if (p1 == color(0) || p2 == color(0) || p3 == color(0) || p4 == color(0) || mx < 0 || my < 0) {
    fill(56);
    mx = 10;
    my = 10;
  }
  if (p1 == color(255, 0, 0) || p2 == color(255, 0, 0) || p3 == color(255, 0, 0) || p4 == color(255, 0, 0) || pc == color(255, 0, 0)) {
    m++;
    mx = 10;
    my = 10;
  }
}

void maze(int level) {

  if (level == 1) {
    image(imgb, 0, 0, width, height);
    fill(255);
    rect(0, 0, 30, 100);
    rect(0, 100, 300, 30);
    rect(50, 100, 30, 200);
    rect(140, 100, 30, 200);
    fill(255, 0, 0);
    ellipse(115, 190, 10, 10);
    player();
  } else if (level == 2) {
    image(imgb, 0, 0, width, height);
    fill(255);
    rect(0, 0, 30, 60);
    rect(0, 60, 100, 30);
    player();
  } else if(level == 3) {
    image(imgb, 0, 0, width, height);
    fill(255);
    rect(0, 0, 30, 30);
    player();
  } else if(level == 4){
    image(imgb, 0, 0, width, height);
    fill(255);
    
    player();
  }else {
    image(imgb, 0, 0, width, height);
    fill(255, 0, 0);
    textSize(32);
    text("Error 404 Maze not Found", 300, 300);
  }
  
  if(!(get(1, 1) == color(255))){
    
    image(imgb, 0, 0, width, height);
    fill(255, 0, 0);
    textSize(32);
    text("Error 404 Maze not Found", 300, 300);
  }
}