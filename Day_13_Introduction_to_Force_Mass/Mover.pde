class Mover //set up and introudce properties.
{
  PVector location = new PVector (0,0);
  PVector velocity = new PVector (0,0);
  PVector acceleration = new PVector (0,0);
  float topspeed = 5;
  float mass = random(10,30);
  
  Mover(float _x, float _y) //constructor. Gives the location. Specify starting positions and values.
  {
    this.location.x = _x;
    this.location.y = _y;
    this.acceleration.x = -0.001;
    this.acceleration.y = 0.01;
  }
 void display()
 {
   fill(255,215,0);
  circle(this.location.x,this.location.y,this.mass); //drawing the circle
 }
 
 void applyForce(PVector force) {

    PVector f = PVector.div(force,mass);
    acceleration.add(f);
 }
 
 void update()
 {
   velocity.add(acceleration);
    location.add(velocity);

    acceleration.mult(0);
 }
 
void check() //determines how far and where the circles can go.
{
 
  if(this.location.x < 0 || this.location.x > width) this.velocity.x = this.velocity.x * (-1); // || means OR. The first expression references the far left off the screen. It's a negative x, off screen. The second expression references to the far right off screen. It exceeds the width of the canvas.
  if(this.location.y < 0 || this.location.y > height) this.velocity.y = this.velocity.y * (-1);
  //if(this.location.x < 0) this.location.x = width;
  //if(this.location.x > width) this.location.x = 0;
   //if(this.location.y < 0) this.location.y = height;
 // if(this.location.y > height) this.location.y = 0;
}
}
