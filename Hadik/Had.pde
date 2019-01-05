class Had
{
  int size= 20;
  int pocet = 10;             // this sets the number of circles
  int[] x = new int[pocet];
  int[] y = new int[pocet];
  int position=0;
  
  void display ()
  {

   x[position] = mouseX;
   y[position] = mouseY;
  
  position += 1;
  
  if (position == pocet) // if it gets the maximum number of circles it resets the position
  {
    position = 0;
  }
  
    for (int i = 0; i < pocet; i++) // if the number of circles is less than the maximum of them, it creates new circle with new position
    {
    int pos = (position + i) % pocet;
    stroke(255);
    strokeWeight(2);
    fill(random(255),random(255),random(255));
    ellipse(x[pos], y[pos],size+random(30), size+random(30));
    }
  }
}
