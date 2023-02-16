int n = 160;
float angle = 0;
void setup()
{
  size(800,800);
  
}

void draw()
{
  //x variable would not work here.
   float d = width/n;
   noStroke();
   colorMode(HSB, width);
   
   for(int y = 0; y < n; y = y + 1) //everythimg within the brackets here will be repeated
  {
  //loop stops when expression in the middle is no longer true. Put the x loop inside the y loop.
  //The x loop creates 8 rectangles at the top. The y loop repeats the x loop to create 8 horizontal lines of 8 rectangles each.
    for(int x = 0; x < n; x = x + 1) //x only works within this work. You can't have the x variable above or outside where it is defined.
  {
  float hue = random(mouseX,mouseX+mouseY);
  float sat = random(400,400);
  float bri = random(400,400);
  fill(color(hue,sat,bri));
 rect(x*d,y*d,d,d);
 //println("x = "+x+" y = "+y);
}
  }
  angle = angle + 0.5;
  if(angle > 340) angle = 0;
}
