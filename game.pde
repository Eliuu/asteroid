void game() {
  background(0);

  myShip.show();
  myShip.act();


  int i = 0;
  while (i < myGameObjects.size()) {
    GameObject myObj = myGameObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      myGameObjects.remove(i);
    } else {
      i++;
    }
  }

  fill(255);
  textFont(pixel, 30);
  text("live: " + myShip.lives, 40, 50);
  text("score: " + score, 40, 70);

  if (myShip.lives == 0) {
    mode = gameover;
  }
}
