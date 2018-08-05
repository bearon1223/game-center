float x1 = 10;
float x2 = 10;
float y1 = 100;
float speedes = 2;
float speeds = 2;

void bg(int type) {
  if (type == 1) {
    fill(200);
    float r = 100;
    noStroke();
    background(100, 100, 255);
    ellipse(x1, y1, r, r);
    ellipse(x1+60, y1, r+20, r+20);
    ellipse(x1+120, y1, r, r);

    if (x1 > width + 100) {
      x1=-500;
      speedes = random(1, 3);
    } else {
      x1+=speedes;
    } 
    if (x2 > width + 100) {
      x2=-500;
      speeds = random(1, 3);
    } else {
      x2+=speeds;
    } 

    ellipse(x2+130, y1+200, r, r);
    ellipse(x2+190, y1+200, r+20, r+20);
    ellipse(x2+250, y1+200, r, r);

    fill(0, 255, 0);
    ellipse(600, 590, 100, 100);
    ellipse(550, 600, 100, 100);
    ellipse(500, 560, 100, 100);
    ellipse(450, 600, 100, 100);
    ellipse(400, 600, 100, 100);
    ellipse(350, 580, 100, 100);
    ellipse(300, 600, 100, 100);
    ellipse(250, 560, 100, 100);
    ellipse(200, 600, 100, 100);
    ellipse(150, 600, 100, 100);
    ellipse(100, 560, 100, 100);
    ellipse(50, 600, 100, 100);
    ellipse(0, 600, 100, 100);
  } else if (type == 2) {
    image(img, 0, 0, 600, 600);
  } else if (type == 3) {
    image(img2, 0, 0, 600, 600);
  } else if (type == 4) {
    image(img4, 0, 0, 600, 600);
  } else {
    image(imgb, 0, 0, 600, 600);
    textAlign(CENTER, CENTER);
    text("Error 404 Background not Found", 300, 300);
  }
}