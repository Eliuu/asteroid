void youwin() {
  background(0);

  if (score > hscore) { 
    hscore = score;
  }

  fill(255);
  textFont(pixel, 70);
  text("congratulations!", 200, 230);
  textFont(pixel, 30);
  text("you have beaten all the enemies.", 220, 260);
  fill(255, 0, 0);
  textFont(pixel, 25);
  text("click to restart", 320, 285);
  fill(255);
  textFont(pixel, 25);
  text("your score:" + score, 335, 345);
  text("highscore:" + score, 340, 370);
}
