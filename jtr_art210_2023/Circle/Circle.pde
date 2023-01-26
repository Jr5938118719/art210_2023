void setup()
{
  size(1000,1000);
}

void draw()
{
  noStroke();
  fill(0,0,0,5);
  rect(0,0,width,height);
  fill(0,100,255);
  circle(mouseX,mouseY,100);
}
