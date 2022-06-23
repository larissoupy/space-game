class Bullet extends GameObject {
  
  Bullet() {
    super(player1.x + player1.size/2-25, player1.y, 0, -10, 10, green, -1);

  }
  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
