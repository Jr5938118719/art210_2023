class Synth
{
  PApplet app;
  SqrOsc sqr;
  Pulse pulse;
  SawOsc Saw;
  float soundLevel = 0;
  float frequency = 100;
  
  Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 1.4;

  
  Synth(PApplet _app, int _type)
  {
    this.app = _app;
    sqr= new SqrOsc(this.app);
    pulse= new Pulse(this.app);
    saw= new SawOsc(this.app);
    this.osc = sqr;
    this.env = new Env(this.app);
    
   // seq = new AniSequence(this);
    
  }
  
  void hit(int osc)
  {
    
   this.env.play(this.osc, this.attackTime, this.sustainTime, this.sustainLevel, this.releaseTime);
    
  }
  
  void update()
  {
    
  }
  
  void display()
  {
    this.sqr.freq(this.frequency);
    this.sin.freq(this.frequency);
    this.saw.freq(this.frequency);
  }
  
}
