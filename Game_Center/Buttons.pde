void sb(float x, float y, int i, String t, boolean p) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      if (!p) {
        index = i;
      } else if (p) {
        I = i;
      }
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void sib(float x, float y, int i, String t) {
  float w = 100;
  float h = 25;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      r = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(t, x+50, y+(25/2));
};

void sab(float x, float y, String t, String i) {
  float w = 100;
  float h = 25;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      save(i);
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(t, x+50, y+(25/2));
};


void sb(float x, float y, int i, String t, float w, float h, int ts, boolean p) {

  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      if (!p) {
        index = i;
      } else if (p) {
        I = i;
      }
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(ts);
  textAlign(CENTER, CENTER);
  text(t, x+(w/2), y+(h/2));
};

void escb(float x, float y, int i, boolean p) {
  float w = 100;
  float h = 25;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (p) {
      if (mousePressed) {
        I = i;
      }
    }
    if (!p) {
      if (mousePressed) {
        index = i;
      }
    }
  }
  noStroke();
  rect(x, y, w, h, 5);
  fill(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Main Menu", x+50, y+12.5);
  //if (keyCode == 192 && p) {
  //  if (keyPressed) {
  //    I = i;
  //  }
  //} 
  //if (keyCode == 192 && !p) {
  //  if (keyPressed) {
  //    index = i;
  //  }
  //}
}

void mb(float x, float y, float i, String t) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      d = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void pb(float x, float y, int i, String t) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      bt = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void eb(float x, float y, String t) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      exit();
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void bb(float x, float y, int i, String t) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      resetB();
      b = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void rb(float x, float y, int i) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      resetB();
      index = i;
    }
  }
  rect(x, y, w, h, 5);
};

void lb(float x, float y, int i) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      m = i;
      I = 2;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Level " + i, x+100, y+24);
}

void rmb(float x, float y, int i, String t) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      resetm();
      I = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void rb(float x, float y, int i, String t) {
  float w = 200;
  float h = 50;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      resetB();
      index = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(t, x+100, y+24);
};

void ab(float x, float y, int i, String t) {
  float w = 100;
  float h = 25;
  fill(56);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(46);
    if (mousePressed) {
      a = i;
    }
  }
  rect(x, y, w, h, 5);
  fill(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(t, x+(w/2), y+(h/2));
};



void cb(float x, float y, color t) {
  float w = 20;
  float h = 20;
  fill(t);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    if (mousePressed) {
      c = t;
    }
  }
  rect(x, y, w, h, 5);
};