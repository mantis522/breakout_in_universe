class Star extends parent{

  Star(){
    x = random(width);
    y = random(height);
    z = random(-200, 400);
    speed = random(3, 5);
    w = random(3, 5);
  }

  void display(){
    noStroke();
    fill(#FFCC33);
    
    pushMatrix();
    translate(x, y, z);
    ellipse(0, 0, w, w);
    popMatrix();
  }
  
  void move(){
    z += speed;
    if (z > 400){
      z = -200;
    }
  }
}
