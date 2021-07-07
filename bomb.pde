class Bomb{
  float x, y, speed, w, s;
  PImage bomb;
  
  Bomb(){
    bomb = loadImage("bomb.jpg");
    x = random(width);
    y = random(height);
    speed = random(3, 5);
    w = random(60, 80);
  }
  
  void display(){
    pushMatrix();
    image(bomb, x, y, w, w);
    popMatrix();
  
  }
  
  void move(){
  
    y += speed;
    if(y > height){
      y = -1000;
    }
    
  }
  
}
