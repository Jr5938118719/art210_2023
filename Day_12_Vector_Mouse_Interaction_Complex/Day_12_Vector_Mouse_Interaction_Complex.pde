int nMover = 1000;
Mover[] m = new Mover[nMover];

void setup()
{
  size(1200,900);
  
  
  for(int i = 0; i < nMover; i = i + 1)
  {
  m[i] = new Mover(width/2,height/2);
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
  for(int i = 0; i < nMover; i = i + 1)
  {
  m[i].display();
  m[i].update();
  m[i].check();
  }
}
