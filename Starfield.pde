Particle[] p;

void setup() {
  size(500, 500);
  p = new Particle[100];
  p[0] = new OddballParticle();
  for (int i = 1; i < p.length; i++) {
    p[i] = new Particle();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < p.length; i++) {
    p[i].move();
    p[i].show();
  }
}

class Particle {
  double x, y, speed, angle;
  Particle() {
    x = width / 2;
    y = height / 2;
    angle = random(0, 6);
    speed = random(1, 4);
  }

  void move() {
    x = x + cos((float)angle)*(float)speed;
    y = y + sin((float)angle)*(float)speed;
  }

  void show() {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    noStroke();
    ellipse((float)x, (float)y, 20, 20);
  }
}

class OddballParticle extends Particle {
  OddballParticle() {
    x = width / 2;
    y = height / 2;
  }
  void move() {
    x += random(-3, 3);
    y += random(-3, 3);
  }
  void show() {
    fill(255, 170, 170);
    noStroke();
    rect((float)x, (float)y, 10, 10);
  }
}
