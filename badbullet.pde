class bBullet extends GameObject {

  bBullet() {
    location = new PVector(myUfo.location.x, myUfo.location.y);
    velocity = new PVector(myShip.location.x - myUfo.location.x, myShip.location.y - myUfo.location.y);
    velocity.setMag(5);
    lives = 1;
    size = 10;
  }

  void show() {
    fill(0, 255, 255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();



    if (location.x > width + size/2) {
      lives = 0;
    }
    if (location.y > height + size/2) {
      lives = 0;
    }
    if (location.x < 0 - size/2) {
      lives = 0;
    }
    if (location.y < 0 - size/2) {
      lives = 0;
    }
  }
}
