//variables for bike
float wheel1;
float wheel2;
float bike;
float handle;
float bikeY;
//variables for human
float human;
float head;
float hand1;
float hand2;
//variables for score
int score;
//other variables
int counter = 0;
float res = 25;
float speed = 5;
//arrays for trees
float[] treeYPos = new float[4]; 
int[] bulbs = new int[7];
//array for pedestrians
float[] pedXPos = new float[6];
float[] pedYPos = {0,0,0,0,0,0};
float[] pedSpeed = new float[6];
//array for Coke No Sugar
float[] cokeXPos = new float[3];
float[] cokeYPos = {0,0,0};

void setup() {
  size(400, 600);  //Determines  the size 400 * 600

  //trees
  for (int i = 0; i < 4; i++) {
    treeYPos[i] = (i)*height/3 - height/6; 
    bulbs[i] = (int) random(3, 9);
  }

  //the bike
  wheel1=width/2;
  wheel2=width/2;
  bike=width/2;
  handle=width/2;
  bikeY=500;

  //the human
  human=width/2;
  head=width/2;
  hand1=width/2-14;
  hand2=width/2+14;

  //the pedestrian
  for(int i=0; i<6;i++) {
    pedXPos[i] = random(width/5+17, width*4/5-17);
    pedSpeed[i] = (float) random(1,5);
  }
  
  //coke no sugar
  for(int i=0; i<3;i++) {
    cokeXPos[i] = random(width/5+17, width*4/5-17);
  }
  
  //score
  score=0;
}

void draw() {
  //grassy field
  for (int y=0; y<=height; y+=10) {
    noStroke();
    for (int x=0; x<=width; x+=10) {
      if (x%20==10 && y%20==10 ) {
        fill(#27D834);
      } else if (x%20==10 || y%20==10) {
        fill(0, 255, 0);
      } else {
        fill(#00C60E);
      }
      rectMode(CORNER);
      rect(x, y, 50, 50);
    }
  }

  //the path
  drawScrollingSquares();
  counter++;

  //moving trees
  for (int i = 0; i < 4; i++) {
    for(int h=(width/5)/4; h <height;h*=17) {
      drawTree(h, treeYPos[i], 35,(int) bulbs[i], 50);
      treeYPos[i]++;
      if (treeYPos[i] >= height) {
        treeYPos[i] = -height/3;
        bulbs[i] = (int) random(3, 9);
      }
    }
  }
  
  //the pedestrian
  for(int i=0; i<6;i++) {
    fill(0,255,255,100);
    stroke(1);
    rectMode(CENTER);
    rect(pedXPos[i],pedYPos[i],35, 15, 5);
    circle(pedXPos[i],pedYPos[i],20);
    pedYPos[i]+=pedSpeed[i];
    if (pedYPos[i]-20>height) {               //pedestrian repeats if it reaches the end of the road
      pedYPos[i]=0;
      pedXPos[i]=random(width/5+17, width*4/5-17);
    }
  }
  
  //coke no sugar
  for(int i=0; i<3;i++) {
    fill(255,0,0);
    circle(cokeXPos[i],cokeYPos[i],30);
    cokeYPos[i]++;
    if (cokeYPos[i]-20>height) {               //pedestrian repeats if it reaches the end of the road
      cokeYPos[i]=0;
      cokeXPos[i]=random(width/5+17, width*4/5-17);
    }
  }
    
  //bike
  rectMode(CENTER);
  stroke(0);
  fill(0);
  rect(wheel1,bikeY, 5, 40);
  fill(#0A58F0);
  rect(bike, bikeY+24, 11, 45);
  rect(handle, bikeY+5, 40, 5);
  fill(0);
  rect(wheel2, bikeY+40, 5, 40);

  //human
  fill(255, 0, 0);
  rect(human, bikeY+24, 35, 15, 5);
  rect(hand1, bikeY+12.5, 5, 10);
  rect(hand2, bikeY+12.5, 5, 10);
  circle(head, bikeY+20, 20);
  
  //score
  fill(0);
  rectMode(CORNER);
  rect(width*4/5,height-35, width/5,35);
  fill(255);
  textSize(20);
  text("Score:"+score,width*4/5,height-15);

  //player movement restriction
  if (handle<=(width/5)+res) {            //player can't go to the right side grass region
    wheel1=(width/5)+res;
    wheel2=(width/5)+res;
    bike=(width/5)+res;
    handle=(width/5)+res;
    human=(width/5)+res;
    head=(width/5)+res;
    hand1=(width/5)-14+res;
    hand2=(width/5)+14+res;
  } else if (handle>=(width*4/5)-res) {      //player can't go to the left side grass region
    wheel1=(width*4/5)-res;
    wheel2=(width*4/5)-res;
    bike=(width*4/5)-res;
    handle=(width*4/5)-res;
    human=(width*4/5)-res;
    head=(width*4/5)-res;
    hand1=(width*4/5)-14-res;
    hand2=(width*4/5)+14-res;
  }
  
  //collision for pedestrians
  for(int i=0; i<6;i++) {
    if((dist(pedXPos[i],pedYPos[i],wheel1,bikeY)<=20) || (dist(pedXPos[i],pedYPos[i],handle, bikeY+5)<=30)) {
      noLoop();
      fill(0);
      rect(width/5,250,width*3/5,120);
      textSize(42);
      fill(255);
      text("GAME OVER",width/5,height/2);
      textSize(24);
      text("Score:"+score,width/2-43,height/2+50);
    }
  }
  
  //collision for coke no sugar
  for(int i=0; i<3;i++) {
    if((dist(cokeXPos[i],cokeYPos[i],wheel1,bikeY)<=30) || (dist(cokeXPos[i],cokeYPos[i],handle, bikeY+5)<=30)) {
      cokeYPos[i]=0;
      cokeXPos[i]=random(width/5+17, width*4/5-17);
      score++;
    }
  }
}

void keyPressed() {
  //player moves left if pressed 'a'
  if (key == 'a') {
    wheel1-=speed;
    wheel2-=speed;
    bike-=speed;
    handle-=speed;
    human-=speed;
    head-=speed;
    hand1-=speed;
    hand2-=speed;
  }
  //player moves right if pressed 'd'
  else if (key == 'd') {
    wheel1+=speed;
    wheel2+=speed;
    bike+=speed;
    handle+=speed;
    human+=speed;
    head+=speed;
    hand1+=speed;
    hand2+=speed;
  }
}

void drawScrollingSquares() {
  for (int a=0; a<=height; a+=40) {
    for (int b=width/5; b<width*4/5; b+=40) {
      int aPos = (a + counter) % (height + 40) - 80/2;
      stroke(0);
      fill(#FCE5E5);
      rectMode(CORNER);
      square(b, aPos, 40);
    }
  }
}

void drawTree(float xPos, float yPos, float scale, int bulbs, float radius) {
  fill(#3E0101);

  fill(#025A1A);
  noStroke();
  if (bulbs==3) {
    fill(#3E0101);
    rect(xPos, yPos-5, radius, 10);
    rect(xPos+20, yPos-25, 10, radius-25);
    fill(#025A1A);
    circle(xPos-3,yPos, scale);
    circle(xPos+54,yPos,scale);
    circle(xPos+25,yPos-27, scale);
  }
  if (bulbs==4) {
    fill(#3E0101);
    rect(xPos, yPos+30, radius, 10);
    fill(#025A1A);
    circle(xPos-2, yPos+35, scale);
    circle(xPos+20, yPos+14, scale);
    circle(xPos+42, yPos+35, scale);
  }
  if (bulbs==5) {
    fill(#3E0101);
    rect(xPos, yPos-5, radius, 10);
    rect(xPos+20, yPos-25, 10, radius);
    fill(#025A1A);
    circle(xPos-3,yPos, scale);
    circle(xPos+54,yPos,scale);
    circle(xPos+25,yPos-27, scale);
    circle(xPos+25,yPos+27,scale);
  }
  if (bulbs==6) {
    fill(#3E0101);
    rect(xPos, yPos-5, radius, 10);
    rect(xPos+20, yPos-25, 10, radius);
    fill(#025A1A);
    circle(xPos+3,yPos, scale);
    circle(xPos+47,yPos,scale);
    circle(xPos+25,yPos-22, scale);
    circle(xPos+25,yPos+22,scale);
  }
  if (bulbs==7) {
    fill(#3E0101);
    rect(xPos, yPos-5, radius, 10);
    rect(xPos+20, yPos-25, 10, radius);
    fill(#025A1A);
    circle(xPos-17,yPos, scale);
    circle(xPos+67,yPos,scale);
    circle(xPos+25,yPos-42, scale);
    circle(xPos+25,yPos+42,scale);
    circle(xPos+25,yPos,scale);
  }
  if (bulbs==8) {
    fill(#3E0101);
    rect(xPos, yPos-5, radius, 10);
    rect(xPos+20, yPos-25, 10, radius);
    fill(#025A1A);
    circle(xPos-9,yPos, scale);
    circle(xPos+59,yPos,scale);
    circle(xPos+25,yPos-34, scale);
    circle(xPos+25,yPos+34,scale);
    circle(xPos+25,yPos,scale);
  }
}
