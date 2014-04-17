class Robot
{
  //Name Variables Here
  float botX;
  float botY;
  float botangleR;
  int botleng;
  int botwid;
  int bothig;
  boolean hasball;
  float topspd;
  int botnum;
  int mass;
  
  
  
  Robot(int leng, int wid, int high,float spd,int mas,int num)
  {
    //Initialize Variables in Here and set to parameters
    botX = 540;
    botY= 250;
    botangleR = 0;
    botleng = leng;
    botwid = wid;
    bothig = high;
    hasball = false;
    topspd = spd;
    botnum = num;
    mass = mas;    
  }
  
  
  void drive() {
    if(botnum == 1) {
        if(keys[0]) {
          botangleR = botangleR-(PI/45);
        }
        if(keys[1]) {
          botangleR = botangleR+(PI/45);
        }
        if(keys[2]) {
          botX = botX + topspd*cos(botangleR);
          botY = botY + topspd*sin(botangleR);
        }
        if(keys[3]) {
          botX = botX - topspd*cos(botangleR);
          botY = botY - topspd*sin(botangleR);
        }
    }
      if(botX<0) {
        botX = 0;
      }
      if(botX>1080) {
        botX = 1080*2;
      }
      if(botY<0) {
        botY = 0;
      }
      if(botY>500) {
        botY = 500;
      }
    }
  
  
  void display() {
    fill(255);
    pushMatrix();
    translate(botX,botY);
    rotate(botangleR);
    if(botnum >= 1 && botnum <= 3) {
      stroke(255, 0, 0);
      fill(255);
    }
    else if(botnum >= 4 && botnum <= 6) {
      stroke(0, 0, 255);
      fill(255);
    }
    rect(0,0,botleng,botwid);
    popMatrix();
    rectMode(CENTER);
    strokeWeight(3);
   }
    
   
    
}
  
