class start{
  int showornot;
  float x, y;
  
  start(){
    showornot = 0;
    x = width / 2;
    y = height / 2;
  }
  
  void display(){
    if (showornot == 0){
      fill(#FAED7D);
      textSize(160);
      text("Breakout in Universe!", x-800, y-280);
      
      fill(#B5B2FF);
      textSize(50);
      text("break targets and earn hearts", x-350, y-130);
      
      text("\n You have to avoid the bombs and score as many points as possible", x-850, y-130);
      
      fill(255, 255, 255);
      textSize(150);
      text("Play", x-150, y+200);
      
      if(mousePressed && (mouseX > x-100 && mouseX < x+100) && (mouseY > y+100 && mouseY < y+200)){
        fill(255, 255, 255);
        showornot = 1;
      }
    } else if(showornot == 1){
      return ;
    }
  }
}
