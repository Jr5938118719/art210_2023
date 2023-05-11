class josh extends Sprite
{
  float maxSpeed = 3;
  
  josh(String id)
  {
    
    super(id);
    
 
  
  if(gameState == SPLASH)
  {
  this.registerAnimation(new Animation("joshIdle","png"));
  this.registerAnimation(new Animation("joshIdle_flipped","png"));
  this.scale = 0.4;
  this.h = 170;
  
  this.location.y = height-this.h;
  }
     
     if(gameState == PLAY)
  {
  this.registerAnimation(new Animation("joshIdle","png"));
  this.registerAnimation(new Animation("joshIdle_flipped","png"));
  this.registerAnimation(new Animation("attack","png"));
  
  this.anim[2].playOnce = true;
  this.registerAnimation(new Animation("attack_flipped","png"));
  this.anim[3].playOnce = true;
  this.registerAnimation(new Animation("joshWalking","png"));
  this.registerAnimation(new Animation("joshWalking_flipped","png"));
  
  this.scale = 0.4;
  this.h = 170;
  this.w =150;
  this.location.y = height-this.h;
   this.translation.x = 0;
  
  }
     
     if(gameState == LOSE)
     {
       this.registerAnimation(new Animation("defeat","png"));
       this.anim[0].playOnce = true;
       this.registerAnimation(new Animation("defeat","png"));
       this.anim[1].playOnce = true;
       this.scale = 0.4;
       this.h = 170;
       this.location.y = height-this.h;
     }
     
    
  }
  
 
 
  
  
  
  void check()
  {
    //super.check();
    Collision coll = new Collision(this,true);
     int res = coll.box2circle(100,100,width-200,height-275,false);
      if(res == Collision.RIGHT || res == Collision.LEFT)
     {
       this.velocity.x = this.velocity.x * (-2);
       this.acceleration.x = this.acceleration.x * (0);
       
     }
     
     if(res == Collision.BOTTOM || res == Collision.TOP)
     {
       this.velocity.y = this.velocity.y * (-2);
       this.acceleration.y = this.acceleration.y * (0);
       
     }
     
    
     
      
  }
}
