

Animation h;
Sprite s;

void setup()
{
  size(800,600);
  //h = new Animation("joshWalking","png");
  s = new Sprite("test");
  s.acceleration = new PVector(0.01,0);
  //s.registerAnimation(h);
  s.registerAnimation(new Animation("joshWalking","png"));
  s.registerAnimation(new Animation("joshWalking_flipped","png"));
  s.scale = 0.4;
  s.h = 120;
}

void draw()
{
  background(255);
  //translate(width/2, height/2);
  //h.speed = (float)mouseX/width;
  //h.display();
  
  s.display();
  s.update();
  s.check();
  
  
}

void mouseClicked()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.velocity.x * (-1.0);
}
