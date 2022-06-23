void intro() {
background(0);  
fill(#462C58);
rect(width/2,750,width, 100);
fill(#54356A);
rect(width/2,650,width, 100);
fill(#674181);
rect(width/2,550,width, 100);
fill(#7C4E9B);
rect(width/2,450,width, 100);
fill(#8C58AF);
rect(width/2,350,width, 100);
fill(#9F64C6);
rect(width/2,250,width, 100);
fill(#B170DE);
rect(width/2,150,width, 100);
fill(#CC81FF);
rect(width/2,50,width, 100);

fill(0);
rect(400,300,600,300);
image(img, 350, 300, 100, 100);
fill(green);
rect(400,170,8,10);
rect(400,200,8,10);
rect(400,230,8,10);
rect(400,260,8,10);
rect(400,290,8,10);

fill(255);
textSize(40);
text("space game", 400,410);

rect(0,0,70,70);

fill(0);
rect(400,600,400,200);
fill(255);
textSize(80);
text("play",400,590);
}


void introClicks(){
  if (mouseX > 200 && mouseX < 600 && mouseY > 500 && mouseY < 700)  mode = GAME;
  
  
  
if (dist(mouseX, mouseY, 40, 40) <50) {
    mode = GAME;
  }
}
