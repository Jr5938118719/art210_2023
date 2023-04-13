class Audio
{
  PApplet app;
  SoundFile[] ambient = new SoundFile[5];
  int nAmbient = 0;
  
  SoundFile[] music = new SoundFile[5];
  int nMusic = 0;
  
  
  TriOsc osc;
  Env env;
  
  Audio(PApplet _app)
  {
    this.app=_app;
    this.env = new Env(this.app);
  }
  
  void AddAmbient(String filename)
  {
    if(nAmbient < 5)
    {
    this.ambient[nAmbient] = new SoundFile(this.app,filename);
    this.nAmbient = this.nAmbient + 1;
    
    }
    
    else
    {
      println("No more space for ambient");
    }
  }
  
  
  void addMusic(String filename)
  {
    if(nMusic < 5)
    {
    this.music[nMusic] = new SoundFile(this.app,filename);
    this.nMusic = this.nMusic + 1;
    
    }
    
    else
    {
      println("No more space for music");
    }
  }
  void display()
  {
    
  }
  
  void update()
  {
    
  }
  
  void check()
  {
    
  }
}
