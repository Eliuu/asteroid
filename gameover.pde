void gameover() {
  background(0);

  if (score > hscore) { 
    hscore = score;
  }

  fill(255);
  textFont(pixel, 70);
  text("you lose...", 285, 240);
  fill(255, 0, 0);
  textFont(pixel, 25);
  text("click to restart", 320, 285);
  fill(255);
  textFont(pixel, 25);
  text("your score:" + score, 335, 345);
  text("highscore:" + score, 340, 370);
}
