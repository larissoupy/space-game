class Ship extends GameObject{
//act = move
int cooldown, threshold;

Ship() {
  super(width/2, height/2, 0, 0, 40, darkpurple, 15);
  threshold = 15;
  cooldown = threshold;
 }

void act(){
  //pew pew
  cooldown++;
  if (space && cooldown >= threshold) {
  objects.add(new Bullet());
  cooldown = 0;
  }
  
  int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Enemy|| obj instanceof EnemyBullet || obj instanceof Enemy2 || obj instanceof EnemyBullet2 || obj instanceof Enemy3 || obj instanceof EnemyBullet3) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
      }
      i++;
    }
  
  //moving
  if (up == true) vy = - 4;
  if (down == true) vy = + 4;
  if (left == true) vx = - 4;
  if (right == true) vx = + 4;
  
  
  if (!up && !down) vy = vy * 0.9;
  if (!left && !right) vx = vx *0.9;
  
  x += vx;
  y += vy;
  
  // im gonna make it loop aroumd the screen kinda
  if (x < -5-size/2) x = width-size/2;
  if (x > width+5-size/2) x = 0-size/2;
  
  if (y < -5-size/2) y = height-size/2;
  if (y > height+5-size/2) y = 0-size/2;
  
  super.act();
  //pop off slay yuh
 }
 


}
