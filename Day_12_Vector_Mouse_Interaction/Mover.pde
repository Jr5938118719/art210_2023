class Mover
{
  PVector location = new PVector (0,0);
  PVector velocity = new PVector (0,0);
  PVector acceleration = new PVector (0,0);
  float topspeed = 5;
  
  Mover(float _x, float _y) //constructor. Gives the location.
  {
    this.location.x = _x;
    this.location.y = _y;
    this.acceleration.x = -0.001;
    this.acceleration.y = 0.01;
  }
 void display()
 {
   fill(255,215,0);
  circle(this.location.x,this.location.y,40); //drawing the circle
 }
 void update()
 {
   PVector mouse = new PVector(mouseX, mouseY);
   PVector dir1 = PVector.sub(mouse,location);
   dir1.normalize();
   
   PVector dir2 = PVector.random2D();
   dir2.normalize();
   dir2.mult(3);
   
   PVector dir = dir1.add(dir2);
   
   this.acceleration = dir.mult(0.1); //mkae it negative for the mouse to be the chaser. 
   
   
   
   
   this.velocity.add(this.acceleration);
   this.velocity.limit(topspeed);
   this.location.add(this.velocity);
 }
 
void check()
{
 
  if(this.location.x < 0 || this.location.x > width) this.velocity.x = this.velocity.x * (-1); // || means OR. The first expression references the far left off the screen. It's a negative x, off screen. The second expression references to the far right off screen. It exceeds the width of the canvas.
  if(this.location.y < 0 || this.location.y > height) this.velocity.y = this.velocity.y * (-1);
  //if(this.location.x < 0) this.location.x = width;
  //if(this.location.x > width) this.location.x = 0;
   //if(this.location.y < 0) this.location.y = height;
 // if(this.location.y > height) this.location.y = 0;
}
}
