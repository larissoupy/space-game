 void pause() {
  
  rect(10,10,70,70);
 }
 
 void pauseClicks(){
  if (dist(mouseX, mouseY, 40, 40) <50) {
    mode = GAME;
  }
 }
