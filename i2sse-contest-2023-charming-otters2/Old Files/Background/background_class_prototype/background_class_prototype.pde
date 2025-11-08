//changing the array size will change the amount of objects falling
DropObject[] dropObjectArr = new DropObject[60];

void setup() {

  //for loop determinate for rendering all objects and assigning them to integer "i to # (i to corresponding number and iterating)"
  //is executed in setup so that it doesn't continue to generate and overwrite objects
  
  for (int i=0; i<dropObjectArr.length; i++) {
    //pos x, pos y, color, size, velocity
    //dropObjectArr[i]=new dropObject(random(800), random(-10, -20), 0, random(2, 40), int(random(2, 6.5)));
    //currently set colour to 0 in accomodation for colour blind mode as potential feature

    dropObjectArr[i]=new DropObject(random(800), random(-10, -20), 0, random(30, 40), int(random(2, 6.5)));
  }
  size(800, 800);
  background(255);
  smooth();
}

void draw() {
  //not the most elegant solution but helps form shadows in falling, might become redundant as a feature
  //changing the second value in fill can change the rate of shadow development
  fill(255, 100);
  rect(0, 0, width, height);

  //for the items in the array, they are summoned as the number i and iterated
  //so that they can be summoned with functions to render, set and check respectively their functions

  //in the section

  //the object i is 0 which is the first object of the array
  //this object is then summoned to be executed with the function "renderObject"
  //which makes the item 0 an array object with a render object as a circle, given the commands in that function
  //fall velocity gives the object its velocity value
  //off screen check is a constant check to see if the object is offscreen or not, i know this is not efficient but that is a consideration for later

  for (int i=0; i<dropObjectArr.length; i++) {

    dropObjectArr[i].renderObject();
    dropObjectArr[i].fallVelocity();
    dropObjectArr[i].offScreenCheck();
  }
}

//class system restructure v3 or something, v2 was just brute force arrays with no consideration for classes

class DropObject {
  float appleX;
  float appleY;
  color appleColor;
  float appleSize;
  float appleVel;

  //pos x, pos y, color, size, velocity
  DropObject(float appleX, float appleY, float appleColor, float appleSize, float appleVel) {
    this.appleX=appleX;
    this.appleY=appleY*(random(2, 5));
    this.appleColor=color(appleColor);
    this.appleSize=appleSize;
    this.appleVel=appleVel+(random(0.2, 0.8));
  }

  //colour limit for the object set for a public local call or private global call, i can't remember off the top of my head what each function was
  //more out of pedantics and functionality for adjustments as seen fit
  void colourLimit() {
    appleColor=255;
  }

  //to set colour of interior of the render object circle or ellipse on grey scale
  void colourBase() {
    if (appleY > height) {
      appleColor=0;
    }
  }


  //testing for generic object structure so that we can then functionalise the object to be anything
  void renderObject() {
    //fill is currently set to the integer "appleColor" in an effort to cull the object after it reaches the bottom of the screen
    //fill(appleColor);

    //set for red to mimic apples falling
    fill(255, 100, 100);
    stroke(255);
    ellipse(appleX, appleY, appleSize, appleSize);
  }

  //fall velocity determinate function
  void fallVelocity() {
    appleY+=appleVel;
  }

  //checks if the object from any given array item being rendered is offscreen or not and whether to cull them or not
  //might need rework in naming as it can be confusing
  void offScreenCheck() {
    if (appleY > height+appleSize) {
      appleY=0;
      appleX=random(800);
    }
  }
}
