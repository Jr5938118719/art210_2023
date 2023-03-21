int nMover = 10;
Mover[] m = new Mover[nMover];

void setup()
{
  size(1200,900);
  
  
  for(int i = 0; i < nMover; i = i + 1)
  {
  m[i] = new Mover(random(10,width),random(10,height));
  }
  //m.velocity.x = random(1,10);
  //m.velocity.y = random(1,10);
}

void draw()
{
  noStroke();
  fill(0,0,0,10); //fill above the shape
  rect(0,0,width,height);
  fill(255,215,0);
  PVector gravitation = new PVector(0,0.1);
  PVector wind = new PVector(0.01,0);
  for(int i = 0; i < nMover; i = i + 1)
  {
  m[i].display();
  m[i].applyForce(gravitation);
   m[i].applyForce(wind);
  m[i].update();
  m[i].check();
  }
}
