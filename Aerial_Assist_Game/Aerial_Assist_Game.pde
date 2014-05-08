  float playerX = 250;
  float playerY = 250;
  float angleD = 0;
  float angleR = radians(angleD);
  Robot player = new Robot(15*2,10*2,5*2,3,100,1);
  Robot red1 = new Robot(14*2,8*2,6*2,2,115,2);
  Robot red2 = new Robot(19*2,11*2,4*2,3,96,3);
  Robot blue1 = new Robot(22*2,12*2,5*2,3,120,4);
  Robot blue2 = new Robot(18*2,12*2,2*2,3,116,5);
  Robot blue3 = new Robot(17*2,9*2,6*2,5,84,6);
  boolean[] keys = new boolean[4];
  
  
  void setup() {
    background(255);
    size(1080,500);  
  }
  
  
  
  void draw() {
  //  background(random(255),random(255),random(255));
    background(255);
    player.display();
    player.drive();
    red1.display();
    red1.drive();
    red2.display();
    red2.drive();
    blue1.display();
    blue1.drive();
    blue2.display();
    blue2.drive();
    blue3.display();
    blue3.drive();
    fill(255);
    stroke(0);
    rectMode(CENTER);
    rect(20,20,40,40);
    rect(1060,20,40,40);
    rect(20,480,40,40);
    rect(1060,480,40,40);
    rect(540,250,20,540);
  }
  
  void keyPressed() {
    if(key=='a') {
      keys[0] = true;
    }
    if(key=='d') {
      keys[1] = true;
    }
    if(key=='w') {
      keys[2] = true;
    }
    if(key=='s') {
      keys[3] = true;
    }
  }
  
  void keyReleased() {
    if(key=='a') {
      keys[0] = false;
    }
    if(key=='d') {
      keys[1] = false;
    }
    if(key=='w') {
      keys[2] = false;
    }
    if(key=='s') {
      keys[3] = false;
    }
  }

