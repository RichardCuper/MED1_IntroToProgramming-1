class Circle
{
  float x, y;
  int  cWidth, cHeight;
  
  Circle(float _x, float _y, int _cWidth, int _cHeight)
  {
    x = _x;
    y = _y;
    cWidth = _cWidth;
    cHeight = _cHeight;
  }
  
  void display()
  {
    noStroke();
    ellipse(x, y, cWidth, cHeight);
  }
  void move()
  {
    x += 1;
  }
}
