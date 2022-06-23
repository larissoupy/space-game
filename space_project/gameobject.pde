abstract class GameObject {

float x, y, size, vx, vy;
int lives;
color c;

GameObject(float x, float y, float vx, float vy, float size, color c, int lives) {
  this.x = x;
  this.y = y;
  this.vx = vx;
  this.vy = vy;
  this.size = size;
  this.c = c;
  this.lives = lives;
  }
  
void act() {
    x = x + vx;
    y = y + vy;
  }
  
void show() {
    fill(c);
    square(x, y, size);
  
  }
  
  boolean collidingWith(GameObject obj) {
    if (dist(obj.x, obj.y, x, y) < obj.size/2 + size/2){
      return true;
    } else {
      return false;
    }
  }
  
  boolean offScreen() {
    return x < 0 || x > width || y < -50 || y > height;
  }
  
  
}
