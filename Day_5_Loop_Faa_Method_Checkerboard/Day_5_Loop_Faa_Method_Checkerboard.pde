void setup()
{
  size(800,800);
  
}

void draw()
{
  //x variable would not work here.
   float d = width/8;
   noStroke();
   
   for(int y = 0; y < 8; y = y + 1) //everythimg within the brackets here will be repeated
  {
  //loop stops when expression in the middle is no longer true. Put the x loop inside the y loop.
  //The x loop creates 8 rectangles at the top. The y loop repeats the x loop to create 8 horizontal lines of 8 rectangles each.
    for(int x = 0; x < 8; x = x + 1) //x only works within this work. You can't have the x variable above or outside where it is defined.
  {
  if ((x+y) % 2 > 0) //percentage sign calculates a remainder when one  number is divided by another
 {
   fill(255,255,0);
 }
 else
 {
  fill(0,0,255);
 }
 rect(x*d,y*d,d,d);
 //println("x = "+x+" y = "+y);
}
  }
}
