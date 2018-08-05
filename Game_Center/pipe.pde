private float X = 610;
private float X2 = 610 + 305;

float t = random(10, 300);

float t2 = random(10, 300);
float l = 5;
int sep = 190;
void pipe() {

  noStroke();

  if (d == 0.501) {
    sep = 250;
  } else if (d == 0.5) {
    sep = 190;
  } else if (d == 0.51) {
    sep = 100;
  }

  // Pipe 1
  if (b == 1) {
    fill(25);
  } else {
    fill(255);
  }
  if (X < 0) {
    X = width;
    t = random(10, 300);
  }

  X -= l;
  rect(X, 0, 5, t);
  rect(X, t + sep, 5, height);

  if (X < 0) {
    X = width;
    t = random(10, 300);
  }

  // Pipe 2

  if (X2 < 0) {
    X2 = width;
    t2 = random(10, 300);
  }

  X2 -= l;
  rect(X2, 0, 5, t2);
  rect(X2, t2 + sep, 5, height);

  // Check Collision

  if (y <= t && x == X || y >= t + sep && x == X || y <= t2 && x == X2 || y >= t2 + sep && x == X2) {
    index = 3;
  }
}