float r = 35;
float theta = 0;
float what=0;
float oldLow = 0;
float oldHigh = 255;
float newLow = 500;
float newHigh = 30000;

void setup()
{
  fullScreen();
  background(0);
}

void draw()
{
  for (int i = 0; i < 25; i++) // na jeden run to pojde vdaka for-u
  {
    float value = random(0, 255);
    float x = r * theta/100 * cos(theta);
    float y = r * theta/100 * sin(theta);
   
    float m = map(value, oldLow, oldHigh, newLow, newHigh);  //remapuje cislo z jedneho rozsahu do druheho. value urcuje poziciu z dvoch rozsahov
    float n = noise(m) * what;  //Create perlin noise from map value--m. Increase the range by increasing the value of "what"
    what = what +0.01;
    
    noFill();
    stroke(value*random(255),value*random(255),value*random(255)); // this plays with visibility of color because of value
    ellipse(x+width/2, y+height/2, n, n);

    theta += 0.05; //ako daleko vykresluje elipsy vzavyslosti od x a y
    r += 0.2;
  }
}
