class ball{
  int x, y, r;
  color c;
  
  ball(int x, int y, int r, color c){
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
  
  }
  
  void ball_move(int x, int y){
    this.x += x;
    this.y += y;
    ball_draw();
  
  }
  
  void ball_draw(){
    fill(c);
    ellipse(x, y, r, r);
  }
  
}


class target{
  int x, y;
  
  
  void target_pos(int x, int y){
    this.x = x;
    this.y = y;
    
  }
  
  void target_draw(){
    strokeWeight(1);
    noFill();
    stroke(0, 0, 255);
    rect(x, y, 300, 50);
  }
}
