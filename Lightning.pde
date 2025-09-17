void setup()
{
  size(300,300);
  background(53);
   frameRate(80);
 
}
  int xi = 150;
  int xf = 150;
  int yi = 0;
  int yf = 0;
  int xi2 = 0;
  int xf2 = 0;
  int yi2 = 300;
  int yf2 = 300;
  int landX = 0;
  int landY = 300;
  int oLoop = 100;
  int toggle = 0;
  float weight = 5;
void draw()
{
  fill(50,50,50,50);
  rect(-50,-50,350,350);
  strokeWeight(weight);
  stroke(#cfe1e6);
xf = xi - 18 + (int)(Math.random() * 37);
yf = yi + 5 + (int)(Math.random() * 15);
line(xi, yi, xf, yf);
xi = xf;
yi = yf;

weight = weight - 0.1;
if (weight < 1.5){
weight = 1.5;
}

if (yf < 310 && yf >290){
landX = xf;
toggle = toggle+1;
}
if (toggle > 0){
  oLoop = 0;
  toggle-=1000;
}
while (oLoop<15){
 xi2 = landX;
 yi2 = 303;
    for (int r = 0; r<5; r++){
xf2 = xi2 - 20 + (int)(Math.random() * 41);
yf2 = yi2 - (int)(Math.random() * 14);
line(xi2, yi2, xf2, yf2);
xi2 = xf2;
yi2 = yf2;
    }
    oLoop++;
}
 if(oLoop == 15){
   noLoop();
    //fill(50,50,50);
    //rect(-50,-50,350,350);
}
}


void mousePressed()
{
loop();
fill(50,50,50);
rect(-50,-50,350,350);

xi = 150;
xf = 150;
yi = 0;
yf = 0;
  xi2 = 0;
  xf2 = 0;
  yi2 = 300;
  yf2 = 300;
  landX = 0;
  landY = 300;
  oLoop = 100;
  toggle = 0;
  weight = 4;

}
