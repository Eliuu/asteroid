
class Asteroid extends GameObject {
  int timer = 0;
  Asteroid() {
    lives = 1;
    size = 60;
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 1);
    velocity.setMag(random(0, 2));
    velocity.rotate(random(TWO_PI));
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    size = s;
    location = new PVector(x, y);
    velocity = new PVector(0, 1);
    velocity.setMag(random(0, 2));
    velocity.rotate(random(TWO_PI));
  }

  void show() {
    noFill();
    stroke(255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer <= 0) {
      timer = 0;
    }
    int i = 0;
    while (i < myGameObjects.size()) {
      GameObject myObj = myGameObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2 ) {
          lives = 0;
          myObj.lives = 0;
          if (size == 90) {
            score = score + 100;
          }
          if (size == 45) {
            score = score + 150;
          }
          if (size < 25 && size > 20) {
            score = score + 200;
          }
          if (size < 20 && size > 5) {
            score = score + 250;
          }

          myGameObjects.add(new Asteroid(size/2, location.x, location.y));
          myGameObjects.add(new Asteroid(size/2, location.x, location.y));
        }
      }
      i++;
    }

    if (dist(myShip.location.x, myShip.location.y, location.x, location.y) < size/2 + myShip.size/2 && timer == 0) {
      myGameObjects.add(new Asteroid(size/2, location.x, location.y));
      myGameObjects.add(new Asteroid(size/2, location.x, location.y));
      myShip.lives--;
      timer = 100;
    }

    if (size <= 10) {
      lives = 0;
    }
  }
}
