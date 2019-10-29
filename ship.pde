class Ship extends GameObject {
  //1. instance variables
  PVector direction;
  PVector hh;
  int shotTimer;
  int threshold;

  //2. constructor(s)
  Ship() {
    lives = 3;
    shotTimer = 0;
    threshold = 30;
    size = 40;

    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.05);
    hh = new PVector(0,1);
  }

  //3. behavior functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    image(shipimg, 0, 0, 40, 40);

    popMatrix();
  }

  void act() {
    super.act();

    shotTimer++;


    if (upkey) velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(3));
    if (rightkey) direction.rotate(radians(3));
    if (spacekey && shotTimer >= threshold) {
      myGameObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
