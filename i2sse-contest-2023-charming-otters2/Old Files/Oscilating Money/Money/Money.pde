float moneyX =400;
float moneyY =400;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  moneyDraw();
  if (moneyX > width) {    //resets the x position to center of screen
    moneyX = width/2;
  }
  if (moneyY > height) {   //resets the y position to center of screen
    moneyX = height/2;
  }
}

void moneyDraw() {  //created the money

  rectMode(CENTER);
  fill(133, 187, 101);
  rect(moneyX, moneyY, 100, 50);

  textAlign(CENTER);
  stroke(0);
  strokeWeight(2);
  fill(0);
  textSize(40);
  text("$", moneyX, moneyY+12);
}
