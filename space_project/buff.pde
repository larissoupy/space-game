class Buff extends GameObject {

  Buff (float x, float y) {
    super (x, y, 0, 0, 30,darkpurple, 1);
  }
  void act() {
    super.act();
    if (offScreen()) lives = 0;
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Ship) {
        if (collidingWith(obj)) {
          player1.lives++;
          lives = 0;
        }
      }
      i++;
    }
  }
  void show(){
    super.show();
    image(med, x-15, y-15, 30,30);
    
  }
}
