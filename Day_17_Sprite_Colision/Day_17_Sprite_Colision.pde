
Sprite a;
Animation h;
Sprite s;

void setup()
{
  size(1200,600);
  //h = new Animation("joshWalking","png");
  s = new Sprite("test");
  s.acceleration = new PVector(0.01,0);
  //s.registerAnimation(h);
  s.registerAnimation(new Animation("joshWalking","png"));
  s.registerAnimation(new Animation("joshWalking_flipped","png"));
  s.scale = 0.4;
  s.h = 170;
  
  a = new Sprite("attack");
 // s. acceleration = new PVector(0.07,0);
 // s.registerAnimation(new Animation("attack","png"));
 // s.registerAnimation(new Animation("attack_flipped","png"));
}

void draw()
{
  background(255);
  fill(230);
  rect(100,100,width-200,height-200);
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
