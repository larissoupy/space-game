class Particle extends GameObject {
  
  Particle(float x, float y, float vx, float vy) {
    super (x, y, vx, vy-10, 10, darkpurple, 1);
  }
    void act(){
    super.act();
  if (offScreen()) lives = 0;
  
     
    }
    void show(){
      super.show();
      image(boom, x, y, 30,30);
      
    }
  }
  
