void setup()
{
  size(300,300);

}
  int xi = 150;
  int xf = 150;
  int yi = 0;
  int yf = 0;
void draw()
{
xf = xi - 5 + (int)(Math.random() * 11);
yf = yi + 5 + (int)(Math.random() * 6);
line(xi, yi, xf, yf);
xi = xf;
yi = yf;
}
void mousePressed()
{
int xi = 150;
int xf = 150;
int yi = 0;
int yf = 0;
}
