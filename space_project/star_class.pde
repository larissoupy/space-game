class Star extends GameObject{

  
  Star() {
    super(random(width), 0, 0, 0, random(1,8), 255, 1);

    vy = size;
    
  }
  
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
 
 void show() {
   super.show();
   //image(star,x,y,size+10,size+10);
   
 }
 
    
  

}
