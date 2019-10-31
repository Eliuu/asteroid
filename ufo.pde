class ufo extends GameObject {
  int shotTimer;
  int threshold;
  int timer;
  ufo() {
    lives = 3;
    location = new PVector(random(width), random(height));
    velocity = new PVector(1, 2);
    velocity.setMag(random(.5, 1));
    velocity.rotate(random(TWO_PI));
    threshold = 80;
    size = 80;
    shotTimer = 0;
  }

  void show() {
    image(ufo, location.x, location.y, 80, 80);
  }

  void act() {
    super.act();
    shotTimer++;
    timer++;
    if (timer>=30 && shotTimer >= threshold) {
      myGameObjects.add(new bBullet());
      shotTimer = 0;
    }

    if (dist(myShip.location.x, myShip.location.y, location.x, location.y) < size/2 + myShip.size/2) {
      myShip.lives--;
    }
  }
}
