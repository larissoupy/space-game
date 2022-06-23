class Enemy2 extends GameObject {
  int cooldown, threshold, buffs;
  
  Enemy2() {
    super(random(width), -45, 0, 5, 15, darkpurple, 1);
    threshold = (int) random (200, 300);//30;
    cooldown = threshold;
    buffs = 0;
  }
  
  void act() {
    super.act();
    
    //shoot
   cooldown++;
  if ( cooldown >= threshold) {
    //
  objects.add(new EnemyBullet2(x, y, -5, 10));
  objects.add(new EnemyBullet2(x, y, 5, 10));
  
  //
  cooldown = 0;
  }
    
    //ouch
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet ){//|| obj instanceof Ship) {
        if (collidingWith(obj)) {
          lives--;
          objects.add(new Particle(x,y,-5,5));
          objects.add(new Particle(x,y,-10,5));
          objects.add(new Particle(x,y,-15,5));
          objects.add(new Particle(x,y,5,5));
          objects.add(new Particle(x,y,10,5));
          objects.add(new Particle(x,y,15,5));
          buffs = (int) random(1, 10);
          if (buffs == 5) objects.add(new Buff(x,y));
        }
        
      }
      i++;
    }
    //remove
    if (offScreen()) lives = 0;

  }
  void show(){
   super.show();
   image(shippy, x-25, y-25, 50,50);
  }
}
