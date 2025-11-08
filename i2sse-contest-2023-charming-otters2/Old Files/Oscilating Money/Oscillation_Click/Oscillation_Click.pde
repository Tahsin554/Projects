int xSpacing = 35;   //How far apart should each horizontal location be spaced
int waveWidth;              //Width of entire wave
int maxWaves = 3;   //total # of waves to add together
float moneyX = 400;
float moneyY = 400;

float theta = 0;
float[] amplitude = new float[maxWaves];
float[] dx = new float[maxWaves];
float[] yValues;

boolean isWaveActive = false;
float startX = 0;
float startY = 0;

void setup() {
  size(800, 800);
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  waveWidth = width + 10;

  for (int i = 0; i < maxWaves; i++) {
    amplitude[i] = random(10, 20);
    float period = random(200, 400); //How many pixels before the wave repeats
    dx[i] = (TWO_PI / period) * xSpacing;
  }

  yValues = new float[waveWidth/xSpacing];
}

void draw() {
  background(255);
  if (isWaveActive) {
    moneyDraw();
    calcWave();
  }
}

void mouseClicked() {
  isWaveActive = true;
  startX = 300;
  startY = 500;
}

void calcWave() {
  theta += 0.4;

  //Set all height values to zero
  for (int i = 0; i < yValues.length; i++) {
    yValues[i] = 0;
  }
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
  fill(133, 187, 101);
  rectMode(CENTER);
  for (int x = 0; x < yValues.length; x++) {
    fill(100, 200, 0);
    rect(startX + x * xSpacing, startY + yValues[x], 35, 20);
    textSize(20);
    fill(255);
    text("$", startX + x * xSpacing - 8, startY + yValues[x] + 6);
  }
}
