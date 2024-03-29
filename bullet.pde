class Bullet extends GameObject {
  int timer;

  Bullet() {
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    lives = 1;
    timer = 60;
    size = 15;
  }

  void show() {
    fill(255, 255, 0);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    timer--;

    if (timer == 0) {
      lives = 0;
    }

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
