class Heart extends parent{
  Heart(){
  x = random(width);
  y = random(height);
  
  speed = random(3, 5);
  w = random(3, 5);
  s = 0.1;
  
  }


  void display(){
  noStroke();
  fill(#F15F5F);
  
  pushMatrix();
  
  beginShape();
  vertex(x-200*s, y);
  bezierVertex(x-200*s, y-140*s, x, y-140*s, x, y-15*s);
  bezierVertex(x, y-140*s, x+200*s, y-140*s, x+200*s, y);
  bezierVertex(x+200*s, y+100*s, x, y+290*s, x, y+300*s);
  bezierVertex(x, y+290*s, x-200*s, y+100*s, x-200*s, y);
  endShape();
  
  popMatrix();
  
  }

  void move(){
    y += speed;
    if(y > height){
      y = -1000;
    }
  
  }


}
