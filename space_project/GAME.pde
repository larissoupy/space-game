

void game() {
  //background(0);
  fill(grey);
  rect(10, 10, 70, 70);
  addObjects();
  fill(darkpurple,100);
  rect(width/2,height/2, width, height);
  gameEngine();
  debug();
  
  image(img, player1.x-40, player1.y-50, 80,80);
 
  
  if(player1.lives == 0) mode = GAMEOVER;
  
  
  
  
}

void addObjects() {
  objects.add(0,new Star());
  if (frameCount % 30 == 0){
    objects.add(new Enemy());
    objects.add(new Enemy2());
    objects.add(new Enemy3());
  }
}

void gameEngine() {
  int i = 0;
  while (i < objects.size() ) {
    GameObject o = objects.get(i);
    o.act();
    o.show();
    if (o.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void debug() {
  textSize(10);
  fill(255);
  text(frameRate, width-50,10);
  text(objects.size(), width-50, 30);
  text(player1.lives, width-50, 50);
  text(player1.x, width-50, 90);
  text(player1.y, width-50, 110);
}



void gameClicks() {
  if (dist(mouseX, mouseY, 40, 40) <50) {
    mode = PAUSE;
  }
}
