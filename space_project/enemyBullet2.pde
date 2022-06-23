class EnemyBullet2 extends GameObject {
  
  EnemyBullet2(float x, float y, float vx, float vy) {
    super (x, y, vx, vy-5, 10, #FF03F3, 1);
  }
    void act(){
    super.act();
  if (offScreen()) lives = 0;
  int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet ){//|| obj instanceof Ship) {
        if (collidingWith(obj)) {
          lives--;
          
        }
        
      }
      i++;
    }
  }
  
}
