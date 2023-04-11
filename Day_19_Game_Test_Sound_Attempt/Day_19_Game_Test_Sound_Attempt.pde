import processing.sound.*;

//Tri0sc tri0sc;
//Env env;

//float attackTime = 0.001;
//float sustainTime = 0.004;
//float sustainLevel = 0.3;
//float releaseTime = 1.4;


int nhomework = 3;
homework[] h = new homework[nhomework];
//Animation h;
josh s;
boolean test = true;

void setup()
{
  size(1200,600);
  //h = new Animation("joshWalking","png");
  s = new josh("test");
 
  for(int i = 0; i < nhomework; i = i+1)
 {
  h[i] = new homework("homework"+i);
 }
 
 //triOsc = new TriOsc(this);
 
 //env = new Env(this);
 
 test = false;
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
  
  for(int i = 0; i < nhomework; i = i+1)
 {
  h[i].display();
  h[i].update();
  h[i].check();
 }
 
}

void keyPressed()
{
 s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.velocity.x * (-1.0);
  
  
}

void mouseClicked()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.velocity.x * (-1.0);
}
