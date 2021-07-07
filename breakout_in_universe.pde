int score = 0;
int s_num = 30;

ball myBall = new ball(350, 350, 16, #3A15E5);
target myTarget = new target();

int x_dir = 1;
int y_dir = 1;
int target_f = 0;

Star myStar[] = new Star[s_num];

int b_num = 15;
Bomb myBomb[] = new Bomb[b_num];

int h_num = 20;
Heart myHeart[] = new Heart[h_num];

start mystart[] = new start[1];

Player myPlayer [] = new Player[1];

void setup(){
  size(1900, 1000, P3D);
  
  for(int i = 0; i < s_num; i++){
    myStar[i] = new Star();
  }
  
  for(int i = 0; i < h_num; i++){
    myHeart[i] = new Heart();
  }
  
  for(int i = 0; i < b_num; i++){
    myBomb[i] = new Bomb();
  }
  
  smooth(8);
  
  myPlayer[0] = new Player(100, 120, 10, 10, 0.3);
  
  mystart[0] = new start();
  myTarget.target_pos(200, 200);
  
  
}

void draw(){
  
  background(0);
  
  for(int i = 0; i < s_num; i++){
    myStar[i].display();
    myStar[i].move();
  }
  
  mystart[0].display();
  
  
  
  if(mystart[0].showornot == 1){
    fill(#FAED7D);
    textSize(60);
    text("Score: " + (int)score, width / 2-750, height / 2-350);
    
    wall_bounce();    
    target_bounce();
    
    
    
    myBall.ball_move(4*x_dir, 6*y_dir);
    Player_bounce();
    delay(10);
    
    
    for(int i = 0; i < h_num; i++){
      myHeart[i].display();
      myHeart[i].move();
    }
    
    for(int i = 0; i < b_num; i++){
      myBomb[i].display();
      myBomb[i].move();
    }
    
    myPlayer[0].display();
    myPlayer[0].update();
    

    
    
    for(int i = 0; i < b_num; i++){
      myPlayer[0].collide(myHeart[i]);
    }
    
    for(int i = 0; i < b_num; i++){
      myPlayer[0].collide(myBomb[i]);
        if(myPlayer[0].gover == 1){
          fill(255, 255, 255);
          textSize(300);
          text("Game over", 200, 600);
          delay(50);
                   
          
        }
    }
  }
}



void Player_bounce(){
  if((myPlayer[0].x-40 <= myBall.x+12) && (myPlayer[0].x+40 >= myBall.x-12)){
    if((myPlayer[0].y-12 <= myBall.y+12) && (myPlayer[0].y+12 >= myBall.y-12)){
      y_dir *=-1;
      
      
      if((myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) >= myBall.x)){
        x_dir =-1;
        
      }
      
      else if(myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) * 2 >= myBall.x){
        x_dir = -1;
      }
      
      else if(myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) * 3 >= myBall.x){
        x_dir = -1;
      }
      
      else if(myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) * 4 >= myBall.x){
        x_dir = -1;
      }
      
      else if(myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) * 5 >= myBall.x){
        x_dir = 1; 
      }
      
      else if(myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) * 6 >= myBall.x){
        x_dir = 1;
      }
      
      else if(myPlayer[0].x - (myPlayer[0].x/2) + (myPlayer[0].x/8) * 7 <= myBall.x){
        x_dir = 1;
        
      }
    
    }
  }
}

void wall_bounce(){
  if(myBall.x >= 1900 -12){
    x_dir *= -1;
  }
  
  if(myBall.x < 0+12){
    x_dir *= -1;
  }
  
  if(myBall.y >= 1000-12){
    y_dir *= -1;
    score = 0;
  }
  
  if(myBall.y <= 0+12){
    y_dir *= -1;
  }
}



void target_bounce(){
  if(target_f == 0){
    myTarget.target_pos(int(random(1450)), int(random(700)));
    target_f = 1;
  }
  
  if((myTarget.x <= myBall.x+100) && (myTarget.x+150 >= myBall.x+100) && (myTarget.y <= myBall.y) && (myTarget.y+80 >= myBall.y)){
    target_f = 0;
    x_dir *= -1;
    score += 100;
  }
  
  if((myTarget.x <= myBall.x-100) && (myTarget.x+150 >= myBall.x-100) && (myTarget.y <= myBall.y) && (myTarget.y+80 >= myBall.y)){
    target_f = 0;
    x_dir *= -1;
    score += 100;
  }
  
  if((myTarget.x <= myBall.x) && (myTarget.x+150 >= myBall.x) && (myTarget.y <= myBall.y-100) && (myTarget.y+80 >= myBall.y-100)){
    target_f = 0;
    y_dir *= -1;
    score += 100;
  }
  
  if((myTarget.x <= myBall.x) && (myTarget.x+150 >= myBall.x) && (myTarget.y <= myBall.y+100) && (myTarget.y+80 >= myBall.y+100)){
    target_f = 0;
    y_dir *= -1;
    score += 100;
  }
  
  myTarget.target_draw();
}
