class homework extends Sprite
{
  float maxSpeed = 3;
  
  homework(String id)
  {
    super(id);
     this.acceleration = new PVector(0,0.07);
    this.registerAnimation(new Animation("homework","png"));
    this.location.y = -this.h;
    //this.rotation = 90.0;
    this.w = 30;
    this.h = 120;
    this.reg.x=this.w/2;
    this.reg.y=this.h;
    this.collRadius=this.w;
    this.translation.y=this.h / (-2.0);

  }
  
  void check()
  {
  Collision coll = new Collision(this,true);
  int res = coll.box2circle(100,100,width-200,height-200+this.h);
      if(res == Collision.BOTTOM)
      {
        this.location.y = -this.h+random(0,100);
        this.location.x = random(100,width-100);
        this.velocity.x = 0;
        this.velocity.y = 0;
        this.acceleration.y = random(0.01,0.03);
      }
      res = coll.circle2circle(s);
      if(res == Collision.IN)
      {
        boing.hit();
      }
      
}
}
