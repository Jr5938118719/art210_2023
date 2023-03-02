class Mover
{
  PVector location = new PVector (0,0);
  PVector velocity = new PVector (0,0);
  
  Mover(float _x, float _y) //constructor
  {
    this.location.x = _x;
    this.location.y = _y;
  }
 void display()
 {
   fill(255,215,0);
  circle(this.location.x,this.location.y,40); //drawing the circle
 }
 void update()
 {
   this.location.add(this.velocity);
 }
 
void check()
{
 
  if(this.location.x < 0 || this.location.x > width) this.velocity.x = this.velocity.x * (-1);
  if(this.location.y < 0 || this.location.y > height) this.velocity.y = this.velocity.y * (-1);
  
}
}
