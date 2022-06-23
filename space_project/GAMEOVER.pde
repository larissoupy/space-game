void gameover() {
  background(0);
  rect(10,10,70,70);
  fill(255,0,0);
  textSize(40);
  text("you died lmao,loser", width/2, height/2);
  
}

void gameoverClicks(){
 if (dist(mouseX, mouseY, 40, 40) <50) {
    mode = INTRO;
    player1.lives = 5;
    objects.add(player1);
  }
}
