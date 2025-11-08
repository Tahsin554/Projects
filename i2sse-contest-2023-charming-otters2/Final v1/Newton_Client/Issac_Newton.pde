float xPos, yPos;

class Body {

  int xSpeed, armAngle, angleChange;
  final int angleLimit;

  Body() {
    xPos = width/2;
    yPos = (2*height/3);
    armAngle = 45;
    xSpeed = 5;
    angleChange = 5;
    angleLimit = 74;
  }

  void hands() {
    //draws and rotates the left hand
    pushMatrix();
    rectMode(CORNER);
    translate(xPos-75, yPos+50);
    rotate(radians(armAngle));
    rect(0, 0, 25, 90);
    popMatrix();
    //draws and rotates the right hand
    pushMatrix();
    translate(xPos+75, yPos+50);
    rotate(radians(-armAngle));
    rect(-25, 0, 25, 90);
    popMatrix();
  }
  void wholeBody() {
    fill(#EBD3C5);                  //skin colour
    rectMode(CENTER);
    //neck
    rect(xPos, yPos+50, 20, 35);
    //hair
    fill(#2A0C90);
    quad(xPos-75, yPos+50, xPos+75, yPos+50, xPos+50, yPos+150, xPos-50, yPos+150);
    fill(175, 167, 166);
    noStroke();
    ellipse(xPos, yPos, 80, 90);
    ellipse(xPos+30, yPos+20, 30, 90);
    ellipse(xPos-30, yPos+20, 30, 90);
    ellipse(xPos-30, yPos+40, 20, 40);
    ellipse(xPos+30, yPos+40, 20, 40);

    //head
    stroke(0);
    fill(#EBD3C5);
    ellipse(xPos, yPos, 70, 80);

    //face
    fill(20);
    ellipse(xPos +15, yPos -5, 15, 10);  //eyes
    ellipse(xPos -15, yPos -5, 15, 10);
    fill(255);
    ellipse(xPos +18, yPos -5, 5, 5);   //eyes
    ellipse(xPos -12, yPos -5, 5, 5);
    fill(#AF332C);
    ellipse(xPos, yPos +30, 30, 7);

    noStroke();
    fill(#D1AF9C);
    ellipse(xPos, yPos +8, 8, 15);    //nose
    ellipse(xPos, yPos +12, 12, 7);

    noStroke();
    fill(175, 167, 166);
    ellipse(xPos, yPos-30, 60, 20);

    fill(0, 0, 0);                    //black colour for thighs
    //thighs
    rect(xPos, yPos+160, 40, 25);
    fill(#2A0C90);                  //navy blue colour for the suit
    hands();
    rectMode(CENTER);
    //body

    fill(0, 0, 0);                    //black colour for pants
    //right leg
    rect(xPos-30, yPos+200, 30, 100);
    //left leg
    rect(xPos+30, yPos+200, 30, 100);
    xPos += xSpeed;                  //newton moves
    //if newton hits the wall, he goes in the opposite direction
    if (xPos+75 > width || xPos-75 < 0) {
      xSpeed *= -1;
    }
  }
}
