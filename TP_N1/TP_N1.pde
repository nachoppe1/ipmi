PImage  miImagen;

void setup(){
size (800,400);
miImagen=loadImage ("lobomardel.jpeg");
}
 void draw(){
  background(173,216,230);
  fill(#EADC8C);
  image (miImagen,0,0,400,400);
  noStroke ();
  fill(#ADA171);
rect(400,350,400,50);


fill(#EADC8C);
  noStroke();
  ellipse(600, 300, 200, 130);


fill(#EADC8C);
rect(500,100,100,200);

fill(#EADC8C);
ellipse(550, 90, 100, 100);

fill(#D8CB81);
triangle(500,100,500,5,600,100);
rect(650,300,50,70);
rect(500,270,42,100);
rect(540,350,20,20);
triangle(560,350,560,370,585,360);
triangle(650,350,650,370,630,360);
fill(0);
ellipse(555,50,10,10);
fill(0);
triangle(500,20,500,40,515,60);
fill(255);
ellipse(700,49,40,40);
ellipse(750,59,40,40);
ellipse(730,67,40,40);
ellipse(700,50,40,40);
ellipse(715,42,45,42);
fill(#51A3F2);
rect(700,300,100,50);
rect(400,300,100,50);
 }
