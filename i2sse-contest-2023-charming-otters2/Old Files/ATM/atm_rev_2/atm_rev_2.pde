int clickTime = 0;
boolean showGreen = false;
//boolean shows = false;

void setup() {
  size(800, 800);
}



void draw() {
  blanker();

  greenScreenLoop();
  /*
  if (showGreen) {
     //ellipse(width/2, height/2, width, height);
     greenScreen();
   
     if (clickTime + 5*10 < millis()) {
     greenScreen2();
     }
     if (clickTime + 5*100 < millis()) {
     showGreen = false;
     }
   }
   */
}

void mousePressed() {
  clickTime = millis();
  showGreen = true;
}





// THE DANGER ZONE //

void blanker() {
  background(255);
  renderAtm();
}

void renderAtm() {
  //atm body background
  fill(50, 50, 50);
  rect(width/10, height/10, width*2/10, height*4/10);
  rect(width*0.5/10, height*3/10, width*2.5/10, height*2/10);
  quad(width*0.5/10, height*3/10, width/10, height*2.5/10, width*3/10, height*2.5/10, width*3/10, height*3/10); 

  //atm body side profile isometric
  fill(0, 0, 0);
  rect(width*2.5/10, height/10, width*0.5/10, height*4/10);
  quad(width*2/10, height*3/10, width*2.5/10, height*2.5/10, width*3/10, height*5/10, width*2/10, height*5/10); 

  // display and input panel
  fill(255);
  rect(width*1.2/10, height*1.2/10, width*1.1/10, height*1/10);
  //quad(width*0.8/10, height*2.9/10, width*1.1/10, height*2.6/10, width*2.1/10, height*2.6/10, width*1.8/10, height*2.9/10); 

  //display side inputs
  fill(100, 100, 100);
  rect(width*1.2/10, height*1.2/10, width*0.1/10, height*1/10);
  rect(width*2.2/10, height*1.2/10, width*0.1/10, height*1/10);

  //input pad 
  quad(width*0.8/10, height*2.9/10, width*1.1/10, height*2.6/10, width*2.1/10, height*2.6/10, width*1.8/10, height*2.9/10); 

  //maintenance panel or advertisement area
  quad(width*0.7/10, height*3.2/10, width*1.8/10, height*3.2/10, width*1.8/10, height*4.8/10, width*0.7/10, height*4.8/10);
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
  quad(width*2.2/10, height*1.2/10, width*2.2/10, height*2.2/10, width*0.6/10, height*2.4/10, width*0.6/10, height*1.0/10);
  //delay(50);
}

void greenScreen2() {

  fill(0, 150, 0, 150);
  quad(width*2.2/10, height*1.2/10, width*2.2/10, height*2.2/10, width*0.6/10, height*2.4/10, width*0.6/10, height*1.0/10);
  //delay(50);
}

void greenScenario1() {
  background(255);
  renderAtm();
  greenScreen();
}

void greenScenario2() {
  background(255);
  renderAtm();
  greenScreen2();
}


void greenScreenLoop() {
  
  if (showGreen) {
    //ellipse(width/2, height/2, width, height);
    //greenScreen();
    for (int i = 0; i < 10; i++) {
      if (clickTime + 5*10*i < millis()) {
        if (i % 2 == 0) {
          greenScenario1();
        } else {
          greenScenario2();
        }
      }
    }

    if (clickTime + 5*100 < millis()) {
      showGreen = false;

      /*
      if (showGreen == false){
        blanker();
      }
      */
    }
  }
}
