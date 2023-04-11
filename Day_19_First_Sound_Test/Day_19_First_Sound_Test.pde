import processing.sound.*;

Amplitude amp;
AudioIn in;

void setup()
{
  size (1200, 900);
  background(225);
  
  
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}

void draw()
{
  background(100);
  noStroke();
  fill(255,200,200);
  circle(width/2,height/2,(amp.analyze()*300)+50);
}
