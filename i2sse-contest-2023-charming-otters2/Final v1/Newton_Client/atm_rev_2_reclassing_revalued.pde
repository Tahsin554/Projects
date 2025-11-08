int clickTime = 0;
boolean showGreen = false;


float atmDist = dist(xPos, yPos, 550, 400);

void mousePressed() {
  clickTime = millis();
  //if (mousePressed && atmDist <=600) {
  showGreen = true;
  //}
}





// THE DANGER ZONE //

//rewrite for class system for global call

//rewrite the class system so the constructor takes input of the xoff and yoff so that it has a value to qualify forming a class
//https://processing.org/tutorials/objects

class Atm {

  //offset values to displace the atm design
  int xOff;
  int yOff;

  void blanker() {
    renderAtm();
  }

  //needs rewrite for non reference bound dimensions
  //this is not a good variable name set, the "x" and "y", but, but serves its purpose
  Atm(int xOff, int yOff) {
    this.xOff=xOff;
    this.yOff=yOff;
  }

  void renderAtm() {
    //atm body background
    rectMode(CORNER);
    stroke(0);
    fill(50, 50, 50);

    //rect(x loc, y loc, x length, y height)
    rect(80+xOff, 80+yOff, 160, 320);
    rect(40+xOff, 240+yOff, 200, 160);

    //quad functions as 4 sets of (x,y) co-ords
    quad(40+xOff, 240+yOff, 80+xOff, 200+yOff, 240+xOff, 200+yOff, 240+xOff, 240+yOff);

    //atm body side profile isometric
    fill(0, 0, 0);
    rect(200+xOff, 80+yOff, 40, 320);
    quad(160+xOff, 240+yOff, 200+xOff, 200+yOff, 240+xOff, 400+yOff, 160+xOff, 400+yOff);

    //display and input panel
    fill(255);
    rect(96+xOff, 96+yOff, 88, 80);
    //quad(width*0.8/10, height*2.9/10, width*1.1/10, height*2.6/10, width*2.1/10, height*2.6/10, width*1.8/10, height*2.9/10);

    //display side inputs
    fill(100, 100, 100);
    rect(96+xOff, 96+yOff, 8, 80);
    rect(176+xOff, 96+yOff, 8, 80);

    //input pad
    quad(64+xOff, 232+yOff, 88+xOff, 208+yOff, 168+xOff, 208+yOff, 144+xOff, 232+yOff);

    //maintenance panel or advertisement area
    quad(56+xOff, 256+yOff, 144+xOff, 256+yOff, 144+xOff, 384+yOff, 56+xOff, 384+yOff);
  }


  void greenScreen() {

    /*
     quad(width*2.2/10, height*1.2/10, width*2.2/10, height*2.2/10, width*0.6/10, height*2.4/10, width*0.6/10, height*1.0/10);
     //delay(50);
     fill(0, 255, 0);
     quad(width*2.2/10, height*1.2/10, width*2.2/10, height*2.2/10, width*0.6/10, height*2.4/10, width*0.6/10, height*1.0/10);
     //delay(50);
     */

    fill(0, 255, 0, 150);
    quad(176+xOff, 96+yOff, 176+xOff, 176+yOff, 48+xOff, 192+yOff, 48+xOff, 80+yOff);
    //delay(50);
  }

  void greenScreen2() {
    fill(0, 150, 0, 150);
    quad(176+xOff, 96+yOff, 176+xOff, 176+yOff, 48+xOff, 192+yOff, 48+xOff, 80+yOff);
    //delay(50);
  }

  void greenScenario1() {
    //background(255);
    renderAtm();
    greenScreen();
  }

  void greenScenario2() {
    //background(255);
    renderAtm();
    greenScreen2();
  }


  void greenScreenLoop() {


    if (showGreen) {
      //ellipse(width/2, height/2, width, height);
      //greenScreen();
      isWaveActive = true;
      startX = 420;
      startY = 550;
      for (int i = 0; i < 10; i++) {
        if (clickTime + 5*10*i < millis()) {
          if (i % 2 == 0) {
            greenScenario1();
          } else {
            greenScenario2();
          }
        }
      }

      if (clickTime + 7*100 < millis()) {
        showGreen = false;
        isWaveActive=false;

        /*
        if (showGreen == false){
          blanker();
        }
        */
      }
    }
  }
  //end of class bracket
}
