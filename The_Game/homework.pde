class homework extends Sprite
{
  float maxSpeed = 3;
  
  
  
  homework(String id)
  {
   
    super(id);
   
     this.acceleration = new PVector(0.08,0);
    this.registerAnimation(new Animation("homeworkIdle","png"));
    this.registerAnimation(new Animation("homeworkDefeat","png"));
    this.anim[1].playOnce=true;
   this.registerAnimation(new Animation("homeworkDefeat_flipped","png"));
   this.anim[2].playOnce=true;
    this.anim[1].playOnce =true;
    this.location.x = -this.w+200;
    this.location.y = random(200,500);
    //this.rotation = 90.0;
    this.w = 40;
    this.h = 120;
    this.reg.x=this.w/2;
    this.reg.y=this.h;
    this.collRadius=this.w;
    this.translation.y=this.h / (-3.5);
    this.translation.x=50;
  }
  
  
  
  void check()
  {
  Collision coll = new Collision(this,true);
  int res = coll.box2circle(100,100,width-200,height-200+this.h,false);
  if(this.currentAnim == 0)
  {
      if(res == Collision.RIGHT || res == Collision.LEFT)
      {
        this.velocity.x = this.velocity.x * random(-1,-3);
      this.acceleration.x = this.acceleration.x * random(0.01,0.01);
     
      }
      
  }
     
     if(this.currentAnim == 1 || this.currentAnim == 2)
  {
      if(res == Collision.RIGHT || res == Collision.LEFT)
      {
       this.location.x = -this.w+100;
        this.location.y = random(150,height-150);
        this.velocity.x = 0;
        this.velocity.y = 0;
        this.acceleration.x = random(0.09, 0.15);
        //this.acceleration.y = 0.1;
        this.currentAnim = 0;
        delay(115);
      }
  }
     
     
     
      
      res = coll.circle2circle(s);
      if(res == Collision.IN && s.currentAnim == 0)
      {
        gameStateChange(LOSE);
        
      }
       if(res == Collision.IN && s.currentAnim == 1)
      {
        gameStateChange(LOSE);
        
      }
      if(res == Collision.IN && s.currentAnim == 4)
      {
        gameStateChange(LOSE);
       
      }
       if(res == Collision.IN && s.currentAnim == 5)
      {
        gameStateChange(LOSE);
        
      }
      if(res == Collision.IN && s.currentAnim == 3)
      {
        if(s.location.x>this.location.x)
        {
        
        gameStateChange(LOSE);
        }
        else
        {
          this.currentAnim = 2;
          
       this.velocity = new PVector(15,0);
       this.acceleration.x = 0;
       this.anim[this.currentAnim].counter=0;
      this.anim[this.currentAnim].currentFrame=0;
    this.anim[this.currentAnim].pause=false;
        }
     
      }
      
      
       res = coll.circle2circle(s);
       
     if(res == Collision.IN && s.currentAnim == 2)
     {
       if(s.location.x>this.location.x)
       {
       this.currentAnim = 1;
       this.velocity = new PVector(-15,0);
       this.acceleration.x = 0;
       this.anim[this.currentAnim].counter=0;
      this.anim[this.currentAnim].currentFrame=0;
    this.anim[this.currentAnim].pause=false;
     }
     else
     {
       gameStateChange(LOSE);
     }
     }
}
}
