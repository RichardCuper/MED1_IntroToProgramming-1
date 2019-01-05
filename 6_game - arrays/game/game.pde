Circle kruh;
Circle [] kruhy = new Circle [300];

int catcherY=330;
int counterX=5;
int counterY=20;
int textposX=150;
int textposY=200;
float x=random(25,575);
float y=0;
int S=25; //size of the image
float speed=1.25;
float speednew=1.1;
int points = 0;  ///starting value for counter
boolean gameover= false; //setting boolean as first on FALSE

PImage catcher; PImage ball; /////////////////loading images
import processing.sound.*;   //////////importing sounds as in references
SoundFile file;  
String music = "music.wav";

SoundFile file2;
String GameOver = "GO.wav";
String path; 

void setup()
{
  noCursor();
  size(600,400);
  catcher = loadImage ("ksicht.png");
  ball = loadImage ("btcball.png");
 
    path = sketchPath(music);//////////////////////audio
  file = new SoundFile(this, path);
  file.amp(0.65);
  file.play();
  
  for(int i = 0; i < kruhy.length; i++)                    //array
  {
    kruhy[i] = new Circle(random(-5000), random(400), 50, 50);              //array
  }
}
  

void draw()
{
      
  background(#780d0d);
  for(int i = 0; i < kruhy.length; i++)              //array
  {
    kruhy[i].display();              //array
    kruhy[i].move();              //array
  }
  image(ball,x,y,S,S);
  y=y+speed;
  
  image(catcher,mouseX-25,catcherY);
  
  textSize(20);//////////////////////////////////////////points counter///
  text("Bitcoins collected: " + points, counterX, counterY);
  
  if (x>mouseX-30 && x<mouseX+22 && y>360 && y<400)///////the core of the game///
  {
    image(catcher,mouseX-25,catcherY);
    y=y+speed;
    y=-25;
    x=random(width);
    speed=speed*speednew;
    points = points + 1;
  }
  else
  {
    if (y > height && gameover == false) 
    {
      gameover=true;
     file.stop();
     
     path = sketchPath(GameOver);//////////////////////audio
  file2 = new SoundFile(this, path);
  file2.play();

    }
    
    if (gameover==true)
    {
      textSize(56);
    text("Game Over", textposX,textposY); 
    }
  }
}
