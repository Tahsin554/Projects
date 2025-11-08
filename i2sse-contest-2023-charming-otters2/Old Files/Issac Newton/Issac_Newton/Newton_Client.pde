/* //<>//
A program drawing Issac Newton
 He moves his hand up and down when clicked and moves from one end of the screen to the other.
 If he reaches an end point he moves in the opposite direction.
 by Tahsin Bin Sohail, 2023
 
 Background by Aditya Gutti Prakash, 2023
 Apples fall in the background in a continuous manner
 */


Body newtonBody;
Background[] dropObject = new Background[100];

public void settings() {
  size(800, 800);
}
void setup() {
  newtonBody = new Body();
  //frameRate(30);                  //slows the program down

  //part of background

  //for loop determinate for rendering all objects and assigning them to integer "i to # (i to corresponding number and iterating)"
  //is executed in setup so that it doesn't continue to generate and overwrite objects
  for (int i=0; i<dropObject.length; i++) {
    //pos x, pos y, color, size, velocity
    //dropObject[i]=new Background(random(800), random(-10, -20), 0, random(2, 40), int(random(2, 6.5)));
    //currently set colour to 0 in accomodation for colour blind mode as potential feature
    dropObject[i]=new Background(random(800), random(-10, -20), 0, random(30, 40), int(random(2, 6.5)));
  }
  smooth();
}

void draw() {
  //runs tests in this part, make the boolean condition false if you want to run the program
  if (false) {
    noLoop();
    testRunner();
    background(0, 255, 0);
    return;
  }
  //main code

  //background part
  //not the most elegant solution but helps form shadows in falling, might become redundant as a feature.
  //changing the second value in fill can change the rate of shadow development
  //pushMatrix() and popMatrix() functions are added in order to blend the background with the Newton's part
  pushMatrix();
  translate(width/2, height/2);
  background(255);
  fill(255, 100);
  rect(0, 0, width, height);
  popMatrix();

  //for the items in the array, they are summoned as the number i and iterated
  //so that they can be summoned with functions to render, set and check respectively their functions

  //in the section
  //the object i is 0 which is the first object of the array
  //this object is then summoned to be executed with the function "renderObject"
  //which makes the item 0 an array object with a render object as a circle, given the commands in that function
  //fall velocity gives the object its velocity value
  //off screen check is a constant check to see if the object is offscreen or not, i know this is not efficient but that is a consideration for later

  for (int i=0; i<dropObject.length; i++) {

    dropObject[i].renderObject();
    dropObject[i].fallVelocity();
    dropObject[i].offScreenCheck();
  }

  //body and movement part
  stroke(0);
  newtonBody.wholeBody();
  if (mousePressed) {
    /*
    changes the angle of the hand continuously to make it move upward
     and stops at a point making the hand go downwards and repeats
     */
    newtonBody.armAngle += newtonBody.angleChange;
    if (newtonBody.armAngle >= newtonBody.angleLimit || newtonBody.armAngle <= 0) {
      newtonBody.angleChange = -newtonBody.angleChange;
      newtonBody.armAngle += newtonBody.angleChange;
    }
  }
}
