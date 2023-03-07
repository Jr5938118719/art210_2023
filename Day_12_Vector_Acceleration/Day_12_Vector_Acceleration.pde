Mover m;

void setup()
{
  size(800,600);
  m = new Mover(width/2,height/2);
  //m.velocity.x = random(1,10);
  //m.velocity.y = random(1,10);
}

void draw()
{
  noStroke();
  fill(0,0,0,10); //fill above the shape
  rect(0,0,width,height);
  fill(255,215,0);
  m.display();
  m.update();
  m.check();
}
