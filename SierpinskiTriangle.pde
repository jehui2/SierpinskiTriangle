public void setup()
{
  size(400, 400);
  background(255);
  noStroke();
  fill(0);
  
}
public void draw()
{
  sierpinski(55, 325, 300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  {
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
