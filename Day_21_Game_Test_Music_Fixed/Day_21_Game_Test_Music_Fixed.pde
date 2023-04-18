import processing.sound.*;
import de.looksgood.ani.*;


TriOsc triOsc;
Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 1.4;



int nhomework = 3;
homework[] h = new homework[nhomework];
josh s;
boolean test = false;
Sound m;


void setup()
{
  size(1200,600);
  //fullScreen();
  m = new Sound(this,"Battle.wav");
  //m.loop();
 // m.fadeIn();
  Ani.init(this);
  
  
  
  
  s = new josh("test");
 
  for(int i = 0; i < nhomework; i = i+1)
 {
  h[i] = new homework("homework"+i);
 }
 
 triOsc = new TriOsc(this);
 
 env = new Env(this);
 
 //test = false;
}

void draw()
{
  background(255);
  fill(230);
  rect(100,100,width-200,height-200);
  
  s.display();
  s.update();
  s.check();
  
  
  for(int i = 0; i < nhomework; i = i+1)
 {
  h[i].display();
  h[i].update();
  h[i].check();
 }
 m.display();
 m.update();
 
}

void keyPressed()
{
 s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.velocity.x * (-1.0);
  
  
}

void mouseClicked()
{
  if(m.soundLevel == 0)
  {
    m.fadeIn();
  }
  
  else
  {
    m.fadeOut();
  
  }
}
