class ball
{
  PVector location = new PVector (0,0); //when making classes, keep initial values at 0
  PVector velocity = new PVector (0,0);
  
ball(float x, float y)
{
  this.location.x = x;
  this.location.y =y;
}

void update()
{
  this.location.add(this.velocity);
}

void display()
{
  ellipse(location.x,location.y,16,16);
}

void check()
{
if ((this.location.x > width) || (this.location.x < 0)) 
{
    this.velocity.x = this.velocity.x* -1;
  }
  if ((this.location.y > height) || (this.location.y < 0)) 
  {
    this.velocity.y = this.velocity.y * -1;
  }
}
}
