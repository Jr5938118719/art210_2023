ball circle = new ball(width/2,height/2);

void setup()
{
  size(640,360);
  background(255);
  
  circle.velocity = new PVector(1,3.3);
  
}
 
void draw()
{
  background(255);
 circle.display();
circle.update();
circle.check();

 
  
}
