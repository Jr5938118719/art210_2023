

Animation h;
Sprite s;

void setup()
{
  size(800,600);
  h = new Animation("joshWalking","png");
  s = new Sprite("test");
  s.acceleration = PVector.random2D();
}

void draw()
{
  background(255);
  translate(width/2, height/2);
  h.speed = (float)mouseX/width;
  h.display();
  
  //s.display();
  //s.update();
  //s.check();
}
