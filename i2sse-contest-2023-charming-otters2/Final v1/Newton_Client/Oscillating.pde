int xSpacing = 35;   //How far apart should each horizontal location be spaced
int waveWidth;              //Width of entire wave
int maxWaves = 3;   //total # of waves to add together
float moneyX = 500;
float moneyY = 200;

float theta = 0;
float[] amplitude = new float[maxWaves];
float[] dx = new float[maxWaves];
float[] yValues;

boolean isWaveActive = false;
float startX = 0;
float startY = 0;



void calcWave() {
  theta += 0.3;

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
