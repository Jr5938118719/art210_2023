class Sprite
{
  String id = "";
  PVector location = new PVector (width/2, height/2);
  PVector velocity = new PVector (0,0);
  PVector acceleration = new PVector (0,0);
  
  float w = 100;
  float h = 100;
  PVector reg = new PVector(w/2.0,h/2.0);
  
  int maxAnim = 10;
  int currentAnim = 0;
  int nAnim = 0;
  Animation[] anim = new Animation[maxAnim];
  float scale = 1.0;
  float rotation = 0.0;
  PVector translation = new PVector (0,0);
  
  float collRadius = w/2.0;
  PVector collBox = new PVector(w,h);
  
  Sprite(String _id)
  {
    this.id = _id;
  }
  
  void registerAnimation(Animation _anim)
  {
    if(this.nAnim < this.maxAnim)
    {
    this.anim[this.nAnim]= _anim;
    this.nAnim = this.nAnim + 1;
    }
    else
    {
      println("Animation number overflow");
    }
  }
  
  
  void update()
  {
    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
  }
  
  void display()
  {
    
    pushMatrix();
      translate(this.location.x,this.location.y);
      pushMatrix();
      rotate(radians(this.rotation));
      translate(this.translation.x,this.translation.y);
      this.anim[this.currentAnim].display();
      popMatrix();
      testDisplay();
    popMatrix();
  }
  
  void testDisplay()
  {
    
    if(test)
    {
    noStroke();
   
      fill(color(100,100,255,50));
      circle(0,0,60);
      stroke(color(255,100,255,50));
      
      rect(-reg.x,-reg.y,this.w,this.h);
    
      noStroke();
      fill(color(0,0,255,100));
      circle(0,0,this.collRadius*2);
    }
    
  }
  
  void check()
  {
    
   }
  
  
  
}
