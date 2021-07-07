class Player extends parent{
  int gover;
  
  Player(float xx, float yy, float vxx, float vyy, float ss){
    x = xx;
    y = yy;
    vx = vxx;
    vy = vyy;
    s = ss;
    gover = 0;
  }
  
  void update(){
    x = mouseX;
    y = mouseY;
    
    if(x + 10 > width){
      x -= 10;
    }
    
    if(x - 10 < 0){
      x += 10;
    }
    
    if(y + 10 > height){
      y -= 10;
    }
    
    if(y - 10 < height){
      y += 10;
    }
    
  }
  
     
  void collide(Heart hh){
    if((abs(hh.x - x) < 50) && (abs(hh.y - y) <50)){
      score = score + 10;
      hh.y += 1000;
    }
  }
  
  void collide(Bomb bb){
    if((abs(bb.x - x) < 50) && (abs(bb.y - y) < 50)){
      gover = 1;
    }
  }
  
  void display(){
    stroke(53, 53, 53);
    strokeWeight(8*s);
    
    fill(255, 255, 255);
    
    arc(x-90*s, y-50*s, 200*s, 500*s, 2, 2.5);
    arc(x-132*s, y+35*s, 100*s, 200*s, 2.4, 4);
    arc(x-127*s, y-5*s, 100*s, 100*s, 3.8, 5);
    
    stroke(255, 255, 255);
    ellipse(x-130*s, y+7*s, 82*s, 100*s);
    stroke(53, 53, 53);
    
    arc(x, y+85*s, 290*s, 600*s, 2.81, 3.2);
    arc(x, y+85*s, 290*s, 600*s, 0, 0.32);
    line(x-105*s, y+200*s, x+107*s, y+200*s);
    
    arc(x, y+40*s, 280*s, 280*s, 3.14, 6.2);
    
    stroke(53, 53, 53);
    fill(255, 255, 255);
    arc(x-125*s, y+193*s, 50*s, 25*s, 0, 4.1);
    
    arc(x+125*s, y+193*s, 50*s, 25*s, 0, 2.7);
    arc(x+126*s, y+193*s, 50*s, 25*s, 5.3, 6.28);
    
    stroke(255, 255, 255);
    rect(x-130*s, y+35*s, 260*s, 157.5*s);
    
    stroke(53, 53, 53);
    fill(53, 53, 53);
    circle(x-85*s, y-18*s, 3*s);
    circle(x+85*s, y-18*s, 3*s);
    point(x-85*s, y-18*s);
    point(x+85*s, y-18*s);
    
    fill(247, 234, 110);
    ellipse(x, y-10*s, 70*s, 35*s);
    bezier(x-15*s, y-13*s, x-10*s, y-5*s, x+10*s, y-5*s, x+15*s, y-13*s);
    
    fill(255, 255, 255);
    stroke(255, 255, 255);
    strokeWeight(14*s);
    circle(x-120*s, y+66*s, 56*s);
    
    stroke(53, 53, 53);
    strokeWeight(8*s);
    arc(x-115*s, y+60*s, 80*s, 70*s, 1.7, 4);
    arc(x-108*s, y+63*s, 110*s, 65*s, 0, 2);
    arc(x-118*s, y+63*s, 130*s, 50*s, 5, 6.28);
    
    fill(255, 255, 255);
    stroke(255, 255, 255);
    circle(x+125*s, y+61*s, 60*s);
    
    stroke(255, 255, 255);
    point(x+135*s, y+28*s);
    stroke(255, 255, 255);
    point(x-135*s, y+37*s);
    
    
  }
  
  
}
