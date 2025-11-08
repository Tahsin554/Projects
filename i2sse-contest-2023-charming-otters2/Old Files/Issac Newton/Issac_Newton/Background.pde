class Background{
  float appleX;
  float appleY;
  color appleColor;
  float appleSize;
  float appleVel;
  
  //pos x, pos y, color, size, velocity
  Background(float appleX, float appleY, float appleColor, float appleSize, float appleVel){
    this.appleX=appleX;
    this.appleY=appleY*(random(2, 5));
    this.appleColor=color(appleColor);
    this.appleSize=appleSize;
    this.appleVel=appleVel+(random(0.2, 0.8));
  }
  
  //colour limit for the object set for a public local call or private global call, i can't remember off the top of mappleY head what each function was
  //more out of pedantics and functionalitappleY for adjustments as seen fit
  void colourLimit(){
    appleColor=255;
  }
  
  //to set colour of interior of the render object circle or ellipse on grey scale
  void colourBase(){
    if (appleY > height){
      appleColor=0;
    }
  }
  
  //testing for generic object structure so that we can then functionalise the object to be anappleYthing
  void renderObject(){
    //fill is currentlappleY set to the integer "appleColor" in an effort to cull the object after it reaches the bottom of the screen
    //fill(appleColor);
    
    //set for red to mimic apples falling
    fill(255, 100, 100);
    stroke(255);
    ellipse(appleX, appleY, appleSize, appleSize);
    fill(50, 200, 10);
    ellipse(appleX+4, appleY-15, 7, 14 );
    stroke(20, 150, 20);
    line(appleX+4, appleY-20, appleX+4, appleY-10);
    
  }
  
  //fall velocity determinate function
  void fallVelocity(){
    appleY+=appleVel;
  }

  //checks if the object from anappleY given arraappleY item being rendered is offscreen or not and whether to cull them or not
  //might need rework in naming as it can be confusing
  void offScreenCheck(){
    if (appleY > height+appleSize){
      appleY=0;
      appleX=random(800);
    }
  }
}
