public float d = 0.5;
public int bt = 0;
private float x = 300; 
private float y = 100;
private float speed = 0;
private float g = 0.2;
float score = 0;
float F = 1;
float F1 = 1;
float j = 1;

public void resetB() {
  y = 100;
  speed = 0;
  X = 610;
  t = 20;
  t2 = 10;
  X2 = 610 + 305;
  score = 0;
}

void bird() {
  float size = 20;
  if (b == 1) {
    stroke(0);
  } else {
    stroke(255);
  }

  if (bt == 0) {
    noFill();
    ellipse(x, y, size, size);
  } else if (bt == 1) {
    image(img3, x - 50, y, 100, 20);
  } else if (bt == 2) {
    fill(F, y, t);
    ellipse(x, y, size, size);
  }

  if (keyPressed && speed > d || mousePressed && speed > d) {
    speed = -4;
  }

  if (x == X &&!(y <= t && x1 == x1 || y >= t + sep && x1 == X)) {
    score ++;
  }

  if (x == X2 &&!(y <= t2 && x1 == X2 || y >= t2 + sep && x1 == X2)) {
    score ++;
  }
  if (F > 255 || F < 0) {
    j = j * -1;
  }
  F += j;

  if (F1 > 255) {
    F1 = 0;
  } else {
    F1++;
  }

  if (d == 0.501) {
    g = 0.15;
  } else {
    g = 0.2;
  }

  speed += g;

  y += speed;

  if (y > height || y < 0) {  
    index = 3;
  }
};