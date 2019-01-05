Flower kvet;

void setup()
{
  size(600,400);
  background(0,230,0);
  
  int r= 60;
  int petals=6;
  float x=width/2;
  float y=height/2;
  int colour=#FFA000;
  
  kvet = new Flower(r,petals,x,y,colour);

}

void draw()
{
  background(0,230,0);
  kvet.display();
  kvet.bounce();
  kvet.move();
}
