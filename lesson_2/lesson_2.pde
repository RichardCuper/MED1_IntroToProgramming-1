int window=70;
int moon=80;

void setup () {
size(500,500);
background(#04011A); //what else do I need to add here lol

fill(#E8E8E8);                 //mesiac
ellipse(400,50,moon,moon);         //mesiac ( using variables )
fill(#C1C1C1);                 //mesiac
noStroke();                    //mesiac
ellipse(420,60,15,15);         //mesiac
ellipse(380,40,20,20);         //mesiac
ellipse(415,25,10,10);         //mesiac
ellipse(390,70,30,30);         //mesiac

fill(#2E1F09);        //trava
stroke(#2E1F09);      //trava
  rect(0,300,500,500);//trava
  
stroke(#B2B3B4);                       //dom pred
fill(#B2B3B4);                         //dom pred
  rect(150,200,200,200);               //dom pred
  
    fill(#8B8B8B);                          //dom zad
    stroke(#8B8B8B);                        //dom zad
      quad(125,170,125,350,150,400,150,200);//dom zad
      
stroke(#6A2A0D);                     //strecha
fill(#6A2A0D);                       //strecha
  triangle(150,200,350,200,250,100); //strecha
  
      stroke(#4D1F09);                    //strecha zad
      fill(#4D1F09);                      //strecha zad
        triangle(150,200,250,100,125,170);//strecha zad   

fill(#270404);      //dvere
noStroke();         //dvere
rect(225,310,50,91);//dvere

stroke(#1F1A13);         //zarubna
strokeWeight(5);         //zarubna
line(225,400,225,310);   //zarubna
line(225,310,275,310);   //zarubna
line(275,310,275,400);   //zarubna

stroke(#F5F5F5);                             //okna
strokeWeight(5);                             //okna
fill(#292929);                               //okna
rect(167,220,window,window);                         //okna / pouzitie premennej (variable)
rect(265,220,window,window);                         //okna
strokeWeight(4);                             //okna
quad(142,218,142,280,132,265,132,205);       //okna
}

void draw() {
  
noStroke();                                 //chodnik
fill(#24170A);                              //chodnik
quad(225,400,275,400,400,500,250,500);      //chodnik

noStroke();                                               //strom kmen
fill(#3B2419);                                            //strom kmen
rect(430,200,50,180);                                     //strom kmen
triangle(430,300,415,395,470,370);                        //strom kmen  lavy koren
triangle(480,300,495,395,440,370);                        //strom kmen  pravy koren
triangle(430,380,455,395,480,380);                        //strom kmen  stredny koren 
quad(430,215,435,200,380,120,375,125);                    //strom lavy velky konar
quad(395,143,400,150,425,100,422,95);                     //strom lavy maly konar
quad(410,170,415,175,375,200,370,198);
quad(480,215,450,200,530,120,535,125);                    //strom pravy konar
quad(455,200,435,200,450,60,455,55);                      //strom stredny konar
quad(485,180,500,180,475,120,473,125);                    //strom pravy maly konar
}
