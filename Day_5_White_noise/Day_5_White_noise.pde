int nRect = 80;

void setup()
{
  size(800,800);
}
void draw()
{
  //x variable would not work here.
   float d = width/nRect;
   noStroke();
   
   for(int y = 0; y < nRect; y = y + 1)
  {
  
    for(int x = 0; x < nRect; x = x + 1) //x only works within this work. You can't have the x variable above or outside where it is defined.
  {
  if(random(0,1) < x/(nRect*2.0)) //0.5< means more black. 0.5> means more white.
  {
    fill(0);
  }
  else
  {
    fill(255);
  }
 rect(x*d,y*d,d,d);
 //println("x = "+x+" y = "+y);
}
  }
}
