int xSpacing = 40;   //How far apart should each horizontal location be spaced
int waveWidth;              //Width of entire wave
int maxWaves = 3;   //total # of waves to add together
float moneyX = 400;
float moneyY = 400;

float theta = 0;
float[] amplitude = new float[maxWaves];   //Height of wave
float[] dx = new float[maxWaves];          //Value for incrementing x, to be calculated as a function of period and xspacing
float[] yValues;                           //Using an array to store height values for the wave (not entirely necessary)

void setup() {
  size(800, 800);
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  waveWidth = width + 10;

  for (int i = 0; i < maxWaves; i++) {
    amplitude[i] = random(10, 30);
    float period = random(200, 400); //How many pixels before the wave repeats
    dx[i] = (TWO_PI / period) * xSpacing;
  }

  yValues = new float[waveWidth/xSpacing];
}

void draw() {
  background(0);
  moneyDraw();
  calcWave();
}

void calcWave() {
  //Increment theta (try different values for 'angular velocity' here)
  theta += 1;

  //Set all height values to zero
  for (int i = 0; i < yValues.length; i++) {
    yValues[i] = 0;
  }

  //Accumulate wave height values
  for (int j = 0; j < maxWaves; j++) {
    float x = theta;
    for (int i = 0; i < yValues.length; i++) {
      //Every other wave is cosine instead of sine
      if (j % 2 == 0) {
        yValues[i] += sin(x)*amplitude[j];
      } else {
        yValues[i] += cos(x)*amplitude[j];
      }
      x+=dx[j];
    }
  }
}

void moneyDraw() {
  //A simple way to draw the wave with an ellipse at each location
  noStroke();
  fill(133, 187, 101);
  rectMode(CENTER);
  for (int x = 0; x < yValues.length; x++) {
    rect(x*xSpacing, height/2+yValues[x], 35, 20);
  }
}
