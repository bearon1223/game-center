int index = -1;
int b = 1;

void Scenes() {
  if (index == -1) {
    cursor(ARROW);
    image(img4, 0, 0, width, height);
    textSize(64);
    text("Game Central", 300, 100);
    sb(200, 160, 0, "Flappy Bird", false);
    sb(200, 230, -20324, "Paint", false);
    sb(200, 300, -123465, "Maze", false);
    eb(200, 540, "End Program");
  }

  if (index == -123465) {
    bg(2);
    if (!mousePressed) {
      index = -90;
    }
  }

  if (index == -90) {
    cursor(ARROW);
    maze();
  }

  if (index == -20324) {
    background(255, 203, 125);
    if (!mousePressed) {
      index = -2;
    }
  }

  if (index == -2) {
    cursor(CROSS);
    paint();
  }

  if (index == 0) {
    //background(0);
    cursor(ARROW);
    noStroke();
    bg(b);
    textFont(f);
    fill(255);
    textAlign(CENTER, CENTER);
    // textSize(64);
    text("Flappy Bird", 300, 250);
    rb(200, 300, 2, "Play");
    sb(200, 360, 1, "How to Play", false);
    sb(390, 520, 5, "Modes", false);
    sb(10, 520, -1, "End Game", false);
    sb(10, 420, 25, "Background", false);
    sb(390, 420, 215, "Player", false);
    score = 0;
  }

  if (index == 25) {
    cursor(ARROW);
    bg(b);
    sb(10, 10, 0, "Back", false);
    bb(200, 300, 1, "Clouds");
    bb(200, 360, 2, "Milky Way");
    bb(200, 420, 3, "Galaxy");
  }

  if (index == 215) {
    cursor(ARROW);
    bg(b);
    sb(10, 10, 0, "Back", false);
    pb(200, 300, 0, "Clear Circle");
    pb(200, 360, 1, "USS Enterprise");
    pb(200, 420, 2, "Opaque Circle");
    if (bt == 0) {
      text("Player: Clear Circle", 400, 15);
    }
    if (bt == 1) {
      text("Player: USS Enterprise", 400, 15);
    }
    if (bt == 2) {
      text("Player: Opaque Circle", 400, 15);
    }
  }

  if (index == 1) {
    cursor(ARROW);
    bg(b);
    sb(10, 10, 0, "Back", false);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("Press any key or the mouse to jump up.\navoid the pipes by going through the gaps.\nget points by surviving", 300, 300);
  }

  if (index == 5) {
    cursor(ARROW);
    bg(b);
    sb(10, 10, 0, "Back", false);
    mb(200, 300, 0.501, "Easy");
    mb(200, 360, 0.5, "Medium");
    mb(200, 420, 0.51, "Hard");

    if (d == 0.501) {
      text("Difficuly: Easy", 400, 15);
    }
    if (d == 0.5) {
      text("Difficuly: Medium", 400, 15);
    }
    if (d == 0.51) {
      text("Difficuly: Hard", 400, 15);
    }
  }

  if (index == 2) {
    textAlign(CORNER, CORNER);
    //background(0);
    bg(b);
    noFill();
    bird();
    pipe();
    stroke(255);
    noFill();
    rect(0, 0, 100, 20);
    textSize(15);
    text("score: " + floor(score), 10, 15);
    escb(480, 560, 0, false);
    cursor(ARROW);
  }

  if (index == 3) {
    cursor(ARROW);
    noStroke();
    background(255, 0, 0);
    textSize(32);
    fill(0);
    textAlign(CENTER, CENTER);
    text("YOU DIED", width/2, height/2);
    text("YOUR SCORE: " + floor(score), width/2, height/2+50);
    if (d == 0.501) {
      text("DIFFICULTY: EASY", 300, 400);
    }
    if (d == 0.5) {
      text("DIFFICULTY: MEDIUM", 300, 400);
    }
    if (d == 0.51) {
      text("DIFFICULTY: HARD", 300, 400);
    }
    sb(200, 440, 0, "Main Menu", false);

    rb(width/2-100, height/2+200, 2, "Replay");
    fill(255);
    textSize(32);
    textAlign(CORNER, CORNER);
    //text("Replay", width/2-50, height/2+230);
  }
}