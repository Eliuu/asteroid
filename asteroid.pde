boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
PImage ufo;
PFont pixel;
Ship myShip;
ArrayList<GameObject> myGameObjects;
int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;
final int youwin = 3;
int score;
int hscore;


void setup() {
  size(800, 600);
  mode = youwin;
  score = 0;
  hscore = 0;
  shipimg = loadImage("ship.png");
  ufo = loadImage("ufo.png");
  imageMode(CENTER);
  myShip = new Ship();
  myGameObjects = new ArrayList<GameObject>();
  pixel = createFont("Coder's Crux.ttf", 20);

  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new ufo());
}

void draw() {
  if ( mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == youwin) {
    youwin();
  } else {
    println("Mode Error. Mode was" + mode);
  }
}

void keyPressed() {
  if (keyCode ==UP)upkey = true;
  if (keyCode ==DOWN)downkey = true;
  if (keyCode ==LEFT)leftkey = true;
  if (keyCode ==RIGHT)rightkey = true;
  if (key == ' ')spacekey = true;
}


void keyReleased() {
  if (keyCode ==UP)upkey = false;
  if (keyCode ==DOWN)downkey = false;
  if (keyCode ==LEFT)leftkey = false;
  if (keyCode ==RIGHT)rightkey = false;
  if (key == ' ')spacekey = false;
}

void mouseReleased() {
  if ( mode == intro) {
    mode = game;
    //  } else if (mode == game) {
    //   mode = gameover;
  } else if (mode == gameover) {
    mode = intro;
    reset();
  } else if (mode == youwin) {
    mode = intro;
    reset();
  } else {
    println("Mode Error. ");
  }
}


void reset() {
  myGameObjects = new ArrayList<GameObject>();
  score = 0;
  myShip.lives = 3;  
  myShip.location = new PVector(width/2, height/2);
  myShip.velocity = new PVector(0, 0);
  myShip.direction = new PVector(0, -0.05);
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  //myGameObjects.add(new ufo());
}
